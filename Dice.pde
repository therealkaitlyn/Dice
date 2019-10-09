void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	//your code here
	for(int y=50; y<=450; y=+50)
	{
		for(int x=50; x<=450; x=+50)
		{
			Die bob= new Die(x,y);
     		bob.show();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
    	myY = y;
    	roll();
	}
	void roll()
	{
		//your code here
		int ran = (int)(Math.random()*6)+1;
		if (ran == 1)
		{
			ran = 1;
		}
		else if (ran == 2)
		{
			ran = 2;
		}
		else if (ran == 3)
		{
			ran = 3;
		}
		else if (ran == 4)
		{
			ran = 4;
		}
		else if (ran == 5)
		{
			ran = 5;
		}
		else 
		{
			ran = 6;
		}

	}
	void show()
	{
		//your code here
		noStroke();
    	fill(255);
    	rect(myX,myY,50,50,1);
    	fill(0);
		if (ran == 1)
		{
			ellipse(myX +15, myY+15, 10, 10);
		}
		else if (ran == 2)
		{
			ellipse(myX +7,myY +7,10,10);
			ellipse(myX +42, myY + 42, 10,10);
		}
		else if (ran == 3)
		{
			ellipse(myX +7,myY +7,10,10);
			ellipse(myX +42, myY + 42, 10,10);
			ellipse(myX +15, myY+15, 10, 10);
		}
		else if (ran == 4)
		{
			ellipse(myX +7,myY +7,10,10);
			ellipse(myX + 7, myY + 42,10,10);
			ellipse(myX +42, myY + 42, 10,10);
			ellipse(myX + 42, myY + 7, 10,10);
		}
		else if (ran == 5)
		{
			ellipse(myX +7,myY +7,10,10);
			ellipse(myX +42, myY + 42, 10,10);
			ellipse(myX +15, myY+15, 10, 10);
			ellipse(myX + 7, myY + 42,10,10);
			ellipse(myX + 42, myY + 7, 10,10);
		}
		else 
		{
			ellipse(myX +7,myY +7,10,10);
			ellipse(myX + 7, myY + 42,10,10);
			ellipse(myX +42, myY + 42, 10,10);
			ellipse(myX + 42, myY + 7, 10,10);
			ellipse(myX + 7, myY + 25, 10,10);
			ellipse(myY + 42, myY+25, 10,10);
		}

	}
}
