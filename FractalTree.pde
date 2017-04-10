private double fractionLength = .825; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,400);   
	drawBranches(320, 400, 100, 3*Math.PI/-2 +3);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;

	int endX, endY, endX1, endY1;

//I like pie
//RAHKSRUIBEILFHJINRFAEBNCFIL AENFJKLLBWEGA


	branchLength = branchLength*fractionLength; 

	endX = (int)(branchLength*Math.cos(angle1)+x);
	endY = (int)(branchLength*Math.sin(angle1)+y);
	endX1 = (int)(branchLength*Math.cos(angle2)+x);
	endY1 = (int)(branchLength*Math.sin(angle2)+y);

	line(x, y, endX, endY);
	line(x, y, endX1, endY1);
	if(branchLength > smallestBranch)
	{
		drawBranches(endX, endY, branchLength, angle1);
		drawBranches(endX1, endY1, branchLength, angle2);
	}
} 
