#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t tex; float y; float spinz; float flap; float fi; scalar_t__ spinzi; scalar_t__ yi; int /*<<< orphan*/  z; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ dRotate ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC9 (float,float) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (float,float,float) ; 
 TYPE_1__* obj ; 
 int /*<<< orphan*/ * texture ; 

void FUNC12()
{
    int loop;
	FUNC4 (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);		// Clear Screen And Depth Buffer

	for (loop=0; loop<50; loop++)							// Loop Of 50 (Draw 50 Objects)
	{
		FUNC7 ();										// Reset The Modelview Matrix
		FUNC3(GL_TEXTURE_2D, texture[obj[loop].tex]);	// Bind Our Texture
		FUNC10(obj[loop].x,obj[loop].y,obj[loop].z);		// Position The Object
		FUNC8(45.0f,1.0f,0.0f,0.0f);						// Rotate On The X-Axis
		if (dRotate)
		{
			FUNC8((obj[loop].spinz),0.0f,0.0f,1.0f);			// Spin On The Z-Axis
		}
		FUNC2(GL_TRIANGLES);									// Begin Drawing Triangles
			// First Triangle														    _____
			FUNC9(1.0f,1.0f); FUNC11( 1.0f, 1.0f, 0.0f);				//	(2)|    / (1)
			FUNC9(0.0f,1.0f); FUNC11(-1.0f, 1.0f, obj[loop].flap);	//	   |  /
			FUNC9(0.0f,0.0f); FUNC11(-1.0f,-1.0f, 0.0f);				//	(3)|/

			// Second Triangle
			FUNC9(1.0f,1.0f); FUNC11( 1.0f, 1.0f, 0.0f);				//	       /|(1)
			FUNC9(0.0f,0.0f); FUNC11(-1.0f,-1.0f, 0.0f);				//	     /  |
			FUNC9(1.0f,0.0f); FUNC11( 1.0f,-1.0f, obj[loop].flap);	//	(2)/____|(3)

		FUNC5();												// Done Drawing Triangles

		obj[loop].y-=obj[loop].yi;								// Move Object Down The Screen
		obj[loop].spinz+=obj[loop].spinzi;						// Increase Z Rotation By spinzi
		obj[loop].flap+=obj[loop].fi;							// Increase flap Value By fi

		if (obj[loop].y<-18.0f)									// Is Object Off The Screen?
		{
			FUNC0(loop);									// If So, Reassign New Values
		}

		if ((obj[loop].flap>1.0f) || (obj[loop].flap<-1.0f))	// Time To Change Flap Direction?
		{
			obj[loop].fi=-obj[loop].fi;							// Change Direction By Making fi = -fi
		}
	}

	FUNC1(15);													// Create A Short Delay (15 Milliseconds)

	FUNC6 ();

}