
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_QUADS ;
 int glBegin (int ) ;
 int glEnd () ;
 int glNormal3f (int,int,int) ;
 int glTexCoord2f (int,int) ;
 int glVertex3f (float,float,float) ;

void stbgl_drawBox(float x, float y, float z, float sx, float sy, float sz, int cw)
{
   float x0,y0,z0,x1,y1,z1;
   sx /=2, sy/=2, sz/=2;
   x0 = x-sx; y0 = y-sy; z0 = z-sz;
   x1 = x+sx; y1 = y+sy; z1 = z+sz;

   glBegin(GL_QUADS);
      if (cw) {
         glNormal3f(0,0,-1);
         glTexCoord2f(0,0); glVertex3f(x0,y0,z0);
         glTexCoord2f(1,0); glVertex3f(x1,y0,z0);
         glTexCoord2f(1,1); glVertex3f(x1,y1,z0);
         glTexCoord2f(0,1); glVertex3f(x0,y1,z0);

         glNormal3f(0,0,1);
         glTexCoord2f(0,0); glVertex3f(x1,y0,z1);
         glTexCoord2f(1,0); glVertex3f(x0,y0,z1);
         glTexCoord2f(1,1); glVertex3f(x0,y1,z1);
         glTexCoord2f(0,1); glVertex3f(x1,y1,z1);

         glNormal3f(-1,0,0);
         glTexCoord2f(0,0); glVertex3f(x0,y1,z1);
         glTexCoord2f(1,0); glVertex3f(x0,y0,z1);
         glTexCoord2f(1,1); glVertex3f(x0,y0,z0);
         glTexCoord2f(0,1); glVertex3f(x0,y1,z0);

         glNormal3f(1,0,0);
         glTexCoord2f(0,0); glVertex3f(x1,y0,z1);
         glTexCoord2f(1,0); glVertex3f(x1,y1,z1);
         glTexCoord2f(1,1); glVertex3f(x1,y1,z0);
         glTexCoord2f(0,1); glVertex3f(x1,y0,z0);

         glNormal3f(0,-1,0);
         glTexCoord2f(0,0); glVertex3f(x0,y0,z1);
         glTexCoord2f(1,0); glVertex3f(x1,y0,z1);
         glTexCoord2f(1,1); glVertex3f(x1,y0,z0);
         glTexCoord2f(0,1); glVertex3f(x0,y0,z0);

         glNormal3f(0,1,0);
         glTexCoord2f(0,0); glVertex3f(x1,y1,z1);
         glTexCoord2f(1,0); glVertex3f(x0,y1,z1);
         glTexCoord2f(1,1); glVertex3f(x0,y1,z0);
         glTexCoord2f(0,1); glVertex3f(x1,y1,z0);
      } else {
         glNormal3f(0,0,-1);
         glTexCoord2f(0,0); glVertex3f(x0,y0,z0);
         glTexCoord2f(0,1); glVertex3f(x0,y1,z0);
         glTexCoord2f(1,1); glVertex3f(x1,y1,z0);
         glTexCoord2f(1,0); glVertex3f(x1,y0,z0);

         glNormal3f(0,0,1);
         glTexCoord2f(0,0); glVertex3f(x1,y0,z1);
         glTexCoord2f(0,1); glVertex3f(x1,y1,z1);
         glTexCoord2f(1,1); glVertex3f(x0,y1,z1);
         glTexCoord2f(1,0); glVertex3f(x0,y0,z1);

         glNormal3f(-1,0,0);
         glTexCoord2f(0,0); glVertex3f(x0,y1,z1);
         glTexCoord2f(0,1); glVertex3f(x0,y1,z0);
         glTexCoord2f(1,1); glVertex3f(x0,y0,z0);
         glTexCoord2f(1,0); glVertex3f(x0,y0,z1);

         glNormal3f(1,0,0);
         glTexCoord2f(0,0); glVertex3f(x1,y0,z1);
         glTexCoord2f(0,1); glVertex3f(x1,y0,z0);
         glTexCoord2f(1,1); glVertex3f(x1,y1,z0);
         glTexCoord2f(1,0); glVertex3f(x1,y1,z1);

         glNormal3f(0,-1,0);
         glTexCoord2f(0,0); glVertex3f(x0,y0,z1);
         glTexCoord2f(0,1); glVertex3f(x0,y0,z0);
         glTexCoord2f(1,1); glVertex3f(x1,y0,z0);
         glTexCoord2f(1,0); glVertex3f(x1,y0,z1);

         glNormal3f(0,1,0);
         glTexCoord2f(0,0); glVertex3f(x1,y1,z1);
         glTexCoord2f(0,1); glVertex3f(x1,y1,z0);
         glTexCoord2f(1,1); glVertex3f(x0,y1,z0);
         glTexCoord2f(1,0); glVertex3f(x0,y1,z1);
      }
   glEnd();
}
