#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int uiRotation; unsigned int uiNumStars; scalar_t__ uiSpeed; } ;
struct TYPE_3__ {float x1; float y1; scalar_t__ z; float x2; float y2; } ;

/* Variables and functions */
 scalar_t__ FAR_PLANE ; 
 float FIELD_HEIGHT ; 
 float FIELD_WIDTH ; 
 scalar_t__ GAP ; 
 int /*<<< orphan*/  GL_ONE ; 
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  GL_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 scalar_t__ NEAR_PLANE ; 
 float RAND_MAX ; 
#define  ROTATION_LINEAR 129 
#define  ROTATION_PERIODIC 128 
 TYPE_2__ Settings ; 
 TYPE_1__* Vertex ; 
 int FUNC0 (float) ; 
 float fAngle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC8 (float,float) ; 
 int /*<<< orphan*/  FUNC9 (float,float,scalar_t__) ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static void
FUNC11(void)
{
    unsigned int i;
    float        fSpin;
    float        fSpeed;
    float        xp, yp;

    // Initialize current speed
    fSpeed = (float)Settings.uiSpeed / 100.f;

    FUNC5(GL_TEXTURE_2D);                // Enable Texture Mapping

    FUNC2(GL_SRC_ALPHA,GL_ONE);           // Set The Blending Function For Translucency

    switch (Settings.uiRotation) {
    case ROTATION_LINEAR:
        fAngle += fSpeed;
        FUNC7( fAngle, 0.0f, 0.0f, 1.0f );
        break;

    case ROTATION_PERIODIC:
        fAngle += fSpeed / 75.f;
        fSpin = (float)(50. * FUNC0(fAngle));
        FUNC7( fSpin, 0.0f, 0.0f, 1.0f );
        break;
    }

    FUNC3(255, 255, 255);

    FUNC1(GL_QUADS);              // Begin Drawing The Textured Quad

    // Draw the stars
    for (i = 0; i < Settings.uiNumStars; i++)
    {
        FUNC8(0.0f, 0.0f); FUNC9(Vertex[i].x1, Vertex[i].y1, Vertex[i].z);
        FUNC8(1.0f, 0.0f); FUNC9(Vertex[i].x2, Vertex[i].y1, Vertex[i].z);
        FUNC8(1.0f, 1.0f); FUNC9(Vertex[i].x2, Vertex[i].y2, Vertex[i].z);
        FUNC8(0.0f, 1.0f); FUNC9(Vertex[i].x1, Vertex[i].y2, Vertex[i].z);

        // increment z
        Vertex[i].z += fSpeed;

        // check to see if passed view
        if( Vertex[i].z > NEAR_PLANE + GAP ||
            Vertex[i].z < FAR_PLANE )
        {
            xp = ( (float) FUNC10() / RAND_MAX - .5f ) * FIELD_WIDTH;
            yp = ( (float) FUNC10() / RAND_MAX - .5f ) * FIELD_HEIGHT;

            Vertex[i].x1 = -1.f + xp;
            Vertex[i].y1 = -1.f + yp;
            Vertex[i].x2 =  1.f + xp;
            Vertex[i].y2 =  1.f + yp;
            Vertex[i].z  = FAR_PLANE;
        }
    }

    FUNC6();                    // Done Drawing The Textured Quad

    FUNC4(GL_TEXTURE_2D);               // Enable Texture Mapping
}