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

/* Variables and functions */
 int /*<<< orphan*/  GL_BLEND ; 
 int GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_CW ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_GREATER ; 
 int /*<<< orphan*/  GL_LESS ; 
 int /*<<< orphan*/  GL_LIGHTING ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  GL_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TRUE ; 
 float FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * camang ; 
 int /*<<< orphan*/ * camloc ; 
 int /*<<< orphan*/  FUNC2 () ; 
 float end_time ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  player_zoom ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 float render_time ; 
 int screen_x ; 
 int screen_y ; 
 float start_time ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int,double,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 

void FUNC21(void)
{
   FUNC11(GL_CULL_FACE);
   FUNC10(GL_TEXTURE_2D);
   FUNC10(GL_LIGHTING);
   FUNC11(GL_DEPTH_TEST);
   #ifdef REVERSE_DEPTH
   glDepthFunc(GL_GREATER);
   glClearDepth(0);
   #else
   FUNC8(GL_LESS);
   FUNC6(1);
   #endif
   FUNC9(GL_TRUE);
   FUNC10(GL_SCISSOR_TEST);
   FUNC5(0.6f,0.7f,0.9f,0.0f);
   FUNC4(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

   FUNC3(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
   FUNC7(1,1,1);
   FUNC12(GL_CW);
   FUNC11(GL_TEXTURE_2D);
   FUNC10(GL_BLEND);


   FUNC14(GL_PROJECTION);
   FUNC13();

   #ifdef REVERSE_DEPTH
   stbgl_Perspective(player_zoom, 90, 70, 3000, 1.0/16);
   #else
   FUNC19(player_zoom, 90, 70, 1.0/16, 3000);
   #endif

   // now compute where the camera should be
   FUNC14(GL_MODELVIEW);
   FUNC13();
   FUNC20();

   FUNC15(-camang[0],1,0,0);
   FUNC15(-camang[2],0,0,1);
   FUNC16(-camloc[0], -camloc[1], -camloc[2]);

   start_time = FUNC0();
   FUNC18(camloc);
   end_time = FUNC0();

   render_time = (end_time - start_time) / (float) FUNC1();

   FUNC14(GL_PROJECTION);
   FUNC13();
   FUNC17(0,screen_x/2,screen_y/2,0);
   FUNC14(GL_MODELVIEW);
   FUNC13();
   FUNC10(GL_TEXTURE_2D);
   FUNC10(GL_BLEND);
   FUNC10(GL_CULL_FACE);
   FUNC2();
}