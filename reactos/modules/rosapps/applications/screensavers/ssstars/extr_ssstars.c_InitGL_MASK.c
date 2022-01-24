#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ bFinePerspective; scalar_t__ bEnableFiltering; scalar_t__ bSmoothShading; } ;
struct TYPE_6__ {float x1; float y1; float x2; float y2; float z; } ;
struct TYPE_5__ {int /*<<< orphan*/  bmBits; int /*<<< orphan*/  bmHeight; int /*<<< orphan*/  bmWidth; } ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  TYPE_1__ BITMAP ;

/* Variables and functions */
 float FAR_PLANE ; 
 float FIELD_DEPTH ; 
 float FIELD_HEIGHT ; 
 float FIELD_WIDTH ; 
 int /*<<< orphan*/  GL_AMBIENT_AND_DIFFUSE ; 
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_COLOR_MATERIAL ; 
 int /*<<< orphan*/  GL_CONSTANT_ATTENUATION ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_FASTEST ; 
 int /*<<< orphan*/  GL_FILL ; 
 int /*<<< orphan*/  GL_FLAT ; 
 int /*<<< orphan*/  GL_FRONT ; 
 int /*<<< orphan*/  GL_FRONT_AND_BACK ; 
 int /*<<< orphan*/  GL_LIGHT0 ; 
 int /*<<< orphan*/  GL_LIGHTING ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_LINEAR_ATTENUATION ; 
 int /*<<< orphan*/  GL_NEAREST ; 
 int /*<<< orphan*/  GL_NICEST ; 
 int /*<<< orphan*/  GL_PERSPECTIVE_CORRECTION_HINT ; 
 int /*<<< orphan*/  GL_QUADRATIC_ATTENUATION ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_SMOOTH ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 unsigned int MAX_STARS ; 
 float RAND_MAX ; 
 int /*<<< orphan*/  STAR_BLUE ; 
 int /*<<< orphan*/  STAR_GREEN ; 
 int /*<<< orphan*/  STAR_RED ; 
 int /*<<< orphan*/  STAR_TAIL ; 
 TYPE_3__ Settings ; 
 TYPE_2__* Vertex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  glStarTex ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(HBITMAP hStarTex)
{
    BITMAP       bm;
    unsigned int i;
    float        xp, yp, zp;

    // set the GL clear color - use when the color buffer is cleared
    FUNC3(STAR_RED, STAR_GREEN, STAR_BLUE, STAR_TAIL);

    if (Settings.bSmoothShading)
        // set the shading model to 'smooth'
        FUNC12( GL_SMOOTH );
    else
        // set the shading model to 'flat'
        FUNC12( GL_FLAT );

    // set GL to render front of polygons
    FUNC11( GL_FRONT_AND_BACK, GL_FILL );
    // enable depth test
    FUNC5( GL_DEPTH_TEST );

    // enable lighting
    FUNC6( GL_LIGHTING );
    // enable lighting for front
    FUNC9( GL_FRONT, GL_TRUE );
    // material have diffuse and ambient lighting 
    FUNC4( GL_FRONT, GL_AMBIENT_AND_DIFFUSE );
    // enable color
    FUNC6( GL_COLOR_MATERIAL );
    // enable light 0
    FUNC6( GL_LIGHT0 );

    // set light attenuation
    FUNC10( GL_LIGHT0, GL_CONSTANT_ATTENUATION,  0.01f); //0.01f );
    FUNC10( GL_LIGHT0, GL_LINEAR_ATTENUATION,    0.01f); //0.2f );
    FUNC10( GL_LIGHT0, GL_QUADRATIC_ATTENUATION, 0.005f); //0.001f );

    // clear the color buffer once
    FUNC2( GL_COLOR_BUFFER_BIT );

    // randomly generate
    FUNC17( FUNC18( NULL ) );

    // Initialize *ALL* stars vertexes (not just programmed ones).
    for (i = 0; i < MAX_STARS; i++)
    {
        xp = ( (float) FUNC16() / RAND_MAX - .5f ) * FIELD_WIDTH;
        yp = ( (float) FUNC16() / RAND_MAX - .5f ) * FIELD_HEIGHT;
        zp = ( (float) FUNC16() / RAND_MAX       ) * FIELD_DEPTH + FAR_PLANE;

        Vertex[i].x1 = -1.f + xp;
        Vertex[i].y1 = -1.f + yp;
        Vertex[i].x2 =  1.f + xp;
        Vertex[i].y2 =  1.f + yp;
        Vertex[i].z  = zp;
    }

    FUNC7(1, &glStarTex);           // Create One Texture

    // Create Linear Filtered Texture
    FUNC1(GL_TEXTURE_2D, glStarTex);

    if (Settings.bEnableFiltering)
    {
        FUNC14(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
        FUNC14(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
    } else {
        FUNC14(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
        FUNC14(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
    }

    // Get Texture properties
    FUNC0(hStarTex, sizeof(BITMAP), &bm);

    // Create texture as a mipmap
#if 0
    glTexImage2D(GL_TEXTURE_2D, 0, 4, bm.bmWidth, bm.bmHeight, 0, GL_RGBA, GL_UNSIGNED_BYTE, bm.bmBits);
#else
    FUNC15(GL_TEXTURE_2D, 4, bm.bmWidth, bm.bmHeight, GL_RGBA, GL_UNSIGNED_BYTE, bm.bmBits);
#endif

    // Disable Texture Mapping (background smoothing)
    FUNC5(GL_TEXTURE_2D);

    if (Settings.bFinePerspective)
        // Really Fast Perspective Calculations
        FUNC8(GL_PERSPECTIVE_CORRECTION_HINT, GL_FASTEST);
    else
        // Really Nice Perspective Calculations
        FUNC8(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);

    // enable blending
    FUNC6( GL_BLEND );
}