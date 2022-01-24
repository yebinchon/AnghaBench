#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int GLsizei ;
typedef  int GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_LEQUAL ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_NICEST ; 
 int /*<<< orphan*/  GL_ONE ; 
 int /*<<< orphan*/  GL_PERSPECTIVE_CORRECTION_HINT ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_SMOOTH ; 
 int /*<<< orphan*/  GL_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (float,int,float,float) ; 

void FUNC14(GLsizei width, GLsizei height)
{
    int loop;

	if (height==0)										// Prevent A Divide By Zero By
	{
		height=1;										// Making Height Equal One
	}

	FUNC12(0,0,width,height);						// Reset The Current Viewport

	FUNC10(GL_PROJECTION);						// Select The Projection Matrix
	FUNC9();									// Reset The Projection Matrix

	// Calculate The Aspect Ratio Of The Window
	FUNC13 (45.0f, (GLfloat)(width)/(GLfloat)(height),1.0f, 1000.0f);

	FUNC10(GL_MODELVIEW);							// Select The Modelview Matrix
	FUNC9();
		// Start Of User Initialization
	FUNC0();									// Load The Textures From Our Resource File

	FUNC3 (0.0f, 0.0f, 0.0f, 0.5f);				// Black Background
	FUNC4 (1.0f);								// Depth Buffer Setup
	FUNC5 (GL_LEQUAL);							// The Type Of Depth Testing (Less Or Equal)
	FUNC6(GL_DEPTH_TEST);							// Disable Depth Testing
	FUNC11 (GL_SMOOTH);							// Select Smooth Shading
	FUNC8 (GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);	// Set Perspective Calculations To Most Accurate
	FUNC7(GL_TEXTURE_2D);							// Enable Texture Mapping
	FUNC2(GL_ONE,GL_SRC_ALPHA);					// Set Blending Mode (Cheap / Quick)
	FUNC7(GL_BLEND);


	for (loop=0; loop<50; loop++)					// Loop To Initialize 50 Objects
	{
		FUNC1(loop);										// Call SetObject To Assign New Random Values
	}

}