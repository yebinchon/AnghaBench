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
 int /*<<< orphan*/  GL_NORMAL_ARRAY ; 
 int /*<<< orphan*/  GL_VERTEX_ARRAY ; 
 unsigned int NB_BANDS ; 
 unsigned int SPECTRUM_WIDTH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (float,float,float) ; 
 int /*<<< orphan*/  FUNC6 (float,float,float) ; 
 int /*<<< orphan*/  FUNC7 (float) ; 

__attribute__((used)) static void FUNC8(float heights[])
{
    FUNC4();
    FUNC6(-2.f, 0.f, 0.f);

    FUNC2(GL_VERTEX_ARRAY);
    FUNC2(GL_NORMAL_ARRAY);

    float w = SPECTRUM_WIDTH / NB_BANDS;
    for (unsigned i = 0; i < NB_BANDS; ++i)
    {
        FUNC4();
        FUNC5(1.f, heights[i], 1.f);
        FUNC7(heights[i]);
        FUNC0();
        FUNC3();

        FUNC6(w, 0.f, 0.f);
    }

    FUNC1(GL_VERTEX_ARRAY);
    FUNC1(GL_NORMAL_ARRAY);

    FUNC3();
}