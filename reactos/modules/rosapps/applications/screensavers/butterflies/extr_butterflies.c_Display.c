
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t tex; float y; float spinz; float flap; float fi; scalar_t__ spinzi; scalar_t__ yi; int z; int x; } ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_TEXTURE_2D ;
 int GL_TRIANGLES ;
 int SetObject (int) ;
 int Sleep (int) ;
 scalar_t__ dRotate ;
 int glBegin (int ) ;
 int glBindTexture (int ,int ) ;
 int glClear (int) ;
 int glEnd () ;
 int glFlush () ;
 int glLoadIdentity () ;
 int glRotatef (float,float,float,float) ;
 int glTexCoord2f (float,float) ;
 int glTranslatef (int ,float,int ) ;
 int glVertex3f (float,float,float) ;
 TYPE_1__* obj ;
 int * texture ;

void Display()
{
    int loop;
 glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

 for (loop=0; loop<50; loop++)
 {
  glLoadIdentity ();
  glBindTexture(GL_TEXTURE_2D, texture[obj[loop].tex]);
  glTranslatef(obj[loop].x,obj[loop].y,obj[loop].z);
  glRotatef(45.0f,1.0f,0.0f,0.0f);
  if (dRotate)
  {
   glRotatef((obj[loop].spinz),0.0f,0.0f,1.0f);
  }
  glBegin(GL_TRIANGLES);

   glTexCoord2f(1.0f,1.0f); glVertex3f( 1.0f, 1.0f, 0.0f);
   glTexCoord2f(0.0f,1.0f); glVertex3f(-1.0f, 1.0f, obj[loop].flap);
   glTexCoord2f(0.0f,0.0f); glVertex3f(-1.0f,-1.0f, 0.0f);


   glTexCoord2f(1.0f,1.0f); glVertex3f( 1.0f, 1.0f, 0.0f);
   glTexCoord2f(0.0f,0.0f); glVertex3f(-1.0f,-1.0f, 0.0f);
   glTexCoord2f(1.0f,0.0f); glVertex3f( 1.0f,-1.0f, obj[loop].flap);

  glEnd();

  obj[loop].y-=obj[loop].yi;
  obj[loop].spinz+=obj[loop].spinzi;
  obj[loop].flap+=obj[loop].fi;

  if (obj[loop].y<-18.0f)
  {
   SetObject(loop);
  }

  if ((obj[loop].flap>1.0f) || (obj[loop].flap<-1.0f))
  {
   obj[loop].fi=-obj[loop].fi;
  }
 }

 Sleep(15);

 glFlush ();

}
