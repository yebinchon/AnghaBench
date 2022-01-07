
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_AMBIENT_AND_DIFFUSE ;
 int GL_BLEND ;
 int GL_COLOR_MATERIAL ;
 int GL_CULL_FACE ;
 int GL_DEPTH_TEST ;
 int GL_DIFFUSE ;
 int GL_FRONT ;
 int GL_LIGHT0 ;
 int GL_LIGHTING ;
 int GL_MODELVIEW ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_POSITION ;
 int GL_PROJECTION ;
 int GL_SMOOTH ;
 int GL_SRC_ALPHA ;
 int GL_TRUE ;
 int glBlendFunc (int ,int ) ;
 int glColorMaterial (int ,int ) ;
 int glDepthMask (int ) ;
 int glEnable (int ) ;
 int glFrustum (float,float,float,float,float,float) ;
 int glLightfv (int ,int ,int ) ;
 int glMatrixMode (int ) ;
 int glShadeModel (int ) ;
 int glTranslatef (double,double,double) ;
 int lightZeroColor ;
 int lightZeroPosition ;

__attribute__((used)) static void initOpenGLScene(void)
{
    glEnable(GL_CULL_FACE);
    glEnable(GL_DEPTH_TEST);
    glDepthMask(GL_TRUE);

    glMatrixMode(GL_PROJECTION);
    glFrustum(-1.0f, 1.0f, -1.0f, 1.0f, 0.5f, 10.0f);

    glMatrixMode(GL_MODELVIEW);
    glTranslatef(0.0, -2.0, -2.0);


    glEnable(GL_LIGHTING);

    glColorMaterial(GL_FRONT, GL_AMBIENT_AND_DIFFUSE);
    glEnable(GL_COLOR_MATERIAL);

    glEnable(GL_LIGHT0);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, lightZeroColor);
    glLightfv(GL_LIGHT0, GL_POSITION, lightZeroPosition);

    glShadeModel(GL_SMOOTH);

    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
}
