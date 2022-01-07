
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ bFinePerspective; scalar_t__ bEnableFiltering; scalar_t__ bSmoothShading; } ;
struct TYPE_6__ {float x1; float y1; float x2; float y2; float z; } ;
struct TYPE_5__ {int bmBits; int bmHeight; int bmWidth; } ;
typedef int HBITMAP ;
typedef TYPE_1__ BITMAP ;


 float FAR_PLANE ;
 float FIELD_DEPTH ;
 float FIELD_HEIGHT ;
 float FIELD_WIDTH ;
 int GL_AMBIENT_AND_DIFFUSE ;
 int GL_BLEND ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_COLOR_MATERIAL ;
 int GL_CONSTANT_ATTENUATION ;
 int GL_DEPTH_TEST ;
 int GL_FASTEST ;
 int GL_FILL ;
 int GL_FLAT ;
 int GL_FRONT ;
 int GL_FRONT_AND_BACK ;
 int GL_LIGHT0 ;
 int GL_LIGHTING ;
 int GL_LINEAR ;
 int GL_LINEAR_ATTENUATION ;
 int GL_NEAREST ;
 int GL_NICEST ;
 int GL_PERSPECTIVE_CORRECTION_HINT ;
 int GL_QUADRATIC_ATTENUATION ;
 int GL_RGBA ;
 int GL_SMOOTH ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TRUE ;
 int GL_UNSIGNED_BYTE ;
 int GetObject (int ,int,TYPE_1__*) ;
 unsigned int MAX_STARS ;
 float RAND_MAX ;
 int STAR_BLUE ;
 int STAR_GREEN ;
 int STAR_RED ;
 int STAR_TAIL ;
 TYPE_3__ Settings ;
 TYPE_2__* Vertex ;
 int glBindTexture (int ,int ) ;
 int glClear (int ) ;
 int glClearColor (int ,int ,int ,int ) ;
 int glColorMaterial (int ,int ) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glGenTextures (int,int *) ;
 int glHint (int ,int ) ;
 int glLightModeli (int ,int ) ;
 int glLightf (int ,int ,float) ;
 int glPolygonMode (int ,int ) ;
 int glShadeModel (int ) ;
 int glStarTex ;
 int glTexImage2D (int ,int ,int,int ,int ,int ,int ,int ,int ) ;
 int glTexParameteri (int ,int ,int ) ;
 int gluBuild2DMipmaps (int ,int,int ,int ,int ,int ,int ) ;
 scalar_t__ rand () ;
 int srand (int ) ;
 int time (int *) ;

__attribute__((used)) static void InitGL(HBITMAP hStarTex)
{
    BITMAP bm;
    unsigned int i;
    float xp, yp, zp;


    glClearColor(STAR_RED, STAR_GREEN, STAR_BLUE, STAR_TAIL);

    if (Settings.bSmoothShading)

        glShadeModel( GL_SMOOTH );
    else

        glShadeModel( GL_FLAT );


    glPolygonMode( GL_FRONT_AND_BACK, GL_FILL );

    glDisable( GL_DEPTH_TEST );


    glEnable( GL_LIGHTING );

    glLightModeli( GL_FRONT, GL_TRUE );

    glColorMaterial( GL_FRONT, GL_AMBIENT_AND_DIFFUSE );

    glEnable( GL_COLOR_MATERIAL );

    glEnable( GL_LIGHT0 );


    glLightf( GL_LIGHT0, GL_CONSTANT_ATTENUATION, 0.01f);
    glLightf( GL_LIGHT0, GL_LINEAR_ATTENUATION, 0.01f);
    glLightf( GL_LIGHT0, GL_QUADRATIC_ATTENUATION, 0.005f);


    glClear( GL_COLOR_BUFFER_BIT );


    srand( time( ((void*)0) ) );


    for (i = 0; i < MAX_STARS; i++)
    {
        xp = ( (float) rand() / RAND_MAX - .5f ) * FIELD_WIDTH;
        yp = ( (float) rand() / RAND_MAX - .5f ) * FIELD_HEIGHT;
        zp = ( (float) rand() / RAND_MAX ) * FIELD_DEPTH + FAR_PLANE;

        Vertex[i].x1 = -1.f + xp;
        Vertex[i].y1 = -1.f + yp;
        Vertex[i].x2 = 1.f + xp;
        Vertex[i].y2 = 1.f + yp;
        Vertex[i].z = zp;
    }

    glGenTextures(1, &glStarTex);


    glBindTexture(GL_TEXTURE_2D, glStarTex);

    if (Settings.bEnableFiltering)
    {
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
    } else {
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
    }


    GetObject(hStarTex, sizeof(BITMAP), &bm);





    gluBuild2DMipmaps(GL_TEXTURE_2D, 4, bm.bmWidth, bm.bmHeight, GL_RGBA, GL_UNSIGNED_BYTE, bm.bmBits);



    glDisable(GL_TEXTURE_2D);

    if (Settings.bFinePerspective)

        glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_FASTEST);
    else

        glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);


    glEnable( GL_BLEND );
}
