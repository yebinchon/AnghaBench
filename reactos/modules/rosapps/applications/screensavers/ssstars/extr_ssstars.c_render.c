
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int uiRotation; unsigned int uiNumStars; scalar_t__ uiSpeed; } ;
struct TYPE_3__ {float x1; float y1; scalar_t__ z; float x2; float y2; } ;


 scalar_t__ FAR_PLANE ;
 float FIELD_HEIGHT ;
 float FIELD_WIDTH ;
 scalar_t__ GAP ;
 int GL_ONE ;
 int GL_QUADS ;
 int GL_SRC_ALPHA ;
 int GL_TEXTURE_2D ;
 scalar_t__ NEAR_PLANE ;
 float RAND_MAX ;


 TYPE_2__ Settings ;
 TYPE_1__* Vertex ;
 int cos (float) ;
 float fAngle ;
 int glBegin (int ) ;
 int glBlendFunc (int ,int ) ;
 int glColor3ub (int,int,int) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glEnd () ;
 int glRotatef (float,float,float,float) ;
 int glTexCoord2f (float,float) ;
 int glVertex3f (float,float,scalar_t__) ;
 scalar_t__ rand () ;

__attribute__((used)) static void
render(void)
{
    unsigned int i;
    float fSpin;
    float fSpeed;
    float xp, yp;


    fSpeed = (float)Settings.uiSpeed / 100.f;

    glEnable(GL_TEXTURE_2D);

    glBlendFunc(GL_SRC_ALPHA,GL_ONE);

    switch (Settings.uiRotation) {
    case 129:
        fAngle += fSpeed;
        glRotatef( fAngle, 0.0f, 0.0f, 1.0f );
        break;

    case 128:
        fAngle += fSpeed / 75.f;
        fSpin = (float)(50. * cos(fAngle));
        glRotatef( fSpin, 0.0f, 0.0f, 1.0f );
        break;
    }

    glColor3ub(255, 255, 255);

    glBegin(GL_QUADS);


    for (i = 0; i < Settings.uiNumStars; i++)
    {
        glTexCoord2f(0.0f, 0.0f); glVertex3f(Vertex[i].x1, Vertex[i].y1, Vertex[i].z);
        glTexCoord2f(1.0f, 0.0f); glVertex3f(Vertex[i].x2, Vertex[i].y1, Vertex[i].z);
        glTexCoord2f(1.0f, 1.0f); glVertex3f(Vertex[i].x2, Vertex[i].y2, Vertex[i].z);
        glTexCoord2f(0.0f, 1.0f); glVertex3f(Vertex[i].x1, Vertex[i].y2, Vertex[i].z);


        Vertex[i].z += fSpeed;


        if( Vertex[i].z > NEAR_PLANE + GAP ||
            Vertex[i].z < FAR_PLANE )
        {
            xp = ( (float) rand() / RAND_MAX - .5f ) * FIELD_WIDTH;
            yp = ( (float) rand() / RAND_MAX - .5f ) * FIELD_HEIGHT;

            Vertex[i].x1 = -1.f + xp;
            Vertex[i].y1 = -1.f + yp;
            Vertex[i].x2 = 1.f + xp;
            Vertex[i].y2 = 1.f + yp;
            Vertex[i].z = FAR_PLANE;
        }
    }

    glEnd();

    glDisable(GL_TEXTURE_2D);
}
