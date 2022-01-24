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
typedef  float GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 float NB_BANDS ; 
 float SPECTRUM_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float const*) ; 

__attribute__((used)) static void FUNC3(void)
{
    const float w = SPECTRUM_WIDTH / NB_BANDS - 0.05f;

    const GLfloat vertexCoords[] = {
        0.f, 0.f, 0.f,     w, 0.f, 0.f,   0.f, 1.f, 0.f,
        0.f, 1.f, 0.f,     w, 0.f, 0.f,     w, 1.f, 0.f,

        0.f, 0.f, -w,    0.f, 0.f, 0.f,   0.f, 1.f,  -w,
        0.f, 1.f, -w,    0.f, 0.f, 0.f,   0.f, 1.f, 0.f,

          w, 0.f, 0.f,     w, 0.f,  -w,     w, 1.f, 0.f,
          w, 1.f, 0.f,     w, 0.f,  -w,     w, 1.f,  -w,

          w, 0.f,  -w,   0.f, 0.f,  -w,   0.f, 1.f,  -w,
        0.f, 1.f,  -w,     w, 1.f,  -w,     w, 0.f,  -w,

        0.f, 1.f, 0.f,     w, 1.f, 0.f,     w, 1.f,  -w,
        0.f, 1.f, 0.f,     w, 1.f,  -w,   0.f, 1.f,  -w,
    };

    const GLfloat normals[] = {
        0.f, 0.f, 1.f,   0.f, 0.f, 1.f,   0.f, 0.f, 1.f,
        0.f, 0.f, 1.f,   0.f, 0.f, 1.f,   0.f, 0.f, 1.f,

        -1.f, 0.f, 0.f,   -1.f, 0.f, 0.f,   -1.f, 0.f, 0.f,
        -1.f, 0.f, 0.f,   -1.f, 0.f, 0.f,   -1.f, 0.f, 0.f,

        1.f, 0.f, 0.f,   1.f, 0.f, 0.f,   1.f, 0.f, 0.f,
        1.f, 0.f, 0.f,   1.f, 0.f, 0.f,   1.f, 0.f, 0.f,

        0.f, 0.f, -1.f,   0.f, 0.f, -1.f,   0.f, 0.f, -1.f,
        0.f, 0.f, -1.f,   0.f, 0.f, -1.f,   0.f, 0.f, -1.f,

        0.f, 1.f, 0.f,   0.f, 1.f, 0.f,   0.f, 1.f, 0.f,
        0.f, 1.f, 0.f,   0.f, 1.f, 0.f,   0.f, 1.f, 0.f,
    };

    FUNC2(3, GL_FLOAT, 0, vertexCoords);
    FUNC1(GL_FLOAT, 0, normals);
    FUNC0(GL_TRIANGLES, 0, 6 * 5);
}