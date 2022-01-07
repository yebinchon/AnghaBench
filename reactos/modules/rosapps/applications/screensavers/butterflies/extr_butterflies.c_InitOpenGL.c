
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLsizei ;
typedef int GLfloat ;


 int GL_BLEND ;
 int GL_DEPTH_TEST ;
 int GL_LEQUAL ;
 int GL_MODELVIEW ;
 int GL_NICEST ;
 int GL_ONE ;
 int GL_PERSPECTIVE_CORRECTION_HINT ;
 int GL_PROJECTION ;
 int GL_SMOOTH ;
 int GL_SRC_ALPHA ;
 int GL_TEXTURE_2D ;
 int LoadGLTextures () ;
 int SetObject (int) ;
 int glBlendFunc (int ,int ) ;
 int glClearColor (float,float,float,float) ;
 int glClearDepth (float) ;
 int glDepthFunc (int ) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glHint (int ,int ) ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glShadeModel (int ) ;
 int glViewport (int ,int ,int,int) ;
 int gluPerspective (float,int,float,float) ;

void InitOpenGL(GLsizei width, GLsizei height)
{
    int loop;

 if (height==0)
 {
  height=1;
 }

 glViewport(0,0,width,height);

 glMatrixMode(GL_PROJECTION);
 glLoadIdentity();


 gluPerspective (45.0f, (GLfloat)(width)/(GLfloat)(height),1.0f, 1000.0f);

 glMatrixMode(GL_MODELVIEW);
 glLoadIdentity();

 LoadGLTextures();

 glClearColor (0.0f, 0.0f, 0.0f, 0.5f);
 glClearDepth (1.0f);
 glDepthFunc (GL_LEQUAL);
 glDisable(GL_DEPTH_TEST);
 glShadeModel (GL_SMOOTH);
 glHint (GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);
 glEnable(GL_TEXTURE_2D);
 glBlendFunc(GL_ONE,GL_SRC_ALPHA);
 glEnable(GL_BLEND);


 for (loop=0; loop<50; loop++)
 {
  SetObject(loop);
 }

}
