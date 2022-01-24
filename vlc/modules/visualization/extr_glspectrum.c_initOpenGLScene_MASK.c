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
 int /*<<< orphan*/  GL_AMBIENT_AND_DIFFUSE ; 
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_COLOR_MATERIAL ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_DIFFUSE ; 
 int /*<<< orphan*/  GL_FRONT ; 
 int /*<<< orphan*/  GL_LIGHT0 ; 
 int /*<<< orphan*/  GL_LIGHTING ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_POSITION ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_SMOOTH ; 
 int /*<<< orphan*/  GL_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (double,double,double) ; 
 int /*<<< orphan*/  lightZeroColor ; 
 int /*<<< orphan*/  lightZeroPosition ; 

__attribute__((used)) static void FUNC9(void)
{
    FUNC3(GL_CULL_FACE);
    FUNC3(GL_DEPTH_TEST);
    FUNC2(GL_TRUE);

    FUNC6(GL_PROJECTION);
    FUNC4(-1.0f, 1.0f, -1.0f, 1.0f, 0.5f, 10.0f);

    FUNC6(GL_MODELVIEW);
    FUNC8(0.0, -2.0, -2.0);

    // Init the light.
    FUNC3(GL_LIGHTING);

    FUNC1(GL_FRONT, GL_AMBIENT_AND_DIFFUSE);
    FUNC3(GL_COLOR_MATERIAL);

    FUNC3(GL_LIGHT0);
    FUNC5(GL_LIGHT0, GL_DIFFUSE, lightZeroColor);
    FUNC5(GL_LIGHT0, GL_POSITION, lightZeroPosition);

    FUNC7(GL_SMOOTH);

    FUNC3(GL_BLEND);
    FUNC0(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
}