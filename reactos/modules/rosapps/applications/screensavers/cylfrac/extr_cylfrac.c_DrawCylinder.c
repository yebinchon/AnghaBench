
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bval ;
 int cylinder ;
 int cylquality ;
 int glColor3f (int,int,int) ;
 int glPopMatrix () ;
 int glPushMatrix () ;
 int glRotatef (double,double,double,double) ;
 int glTranslatef (double,int,double) ;
 int gluCylinder (int ,float,float,int,int ,int) ;
 int gval ;
 float rotfactor ;
 int rval ;
 float wfactor ;

void DrawCylinder(int n, float rota, float width)
{
    glPushMatrix();
    glColor3f(rval/n, gval/n, bval/n);
    glRotatef(rota, 0.0, 1.0, 0.0);
    gluCylinder(cylinder, width, width * wfactor, n * 0.5, cylquality, 1);
    glTranslatef(0.0, 0.0, -n * 0.5);
    gluCylinder(cylinder, width * wfactor, width, n * 0.5, cylquality, 1);
    if(n > 1)
    {
        float r = rota * rotfactor;
        glRotatef(90.0, 1.0, 0.0, 0.0);
        DrawCylinder(n - 1, r, width * wfactor);
        glTranslatef(0.0, n, 0.0);
        DrawCylinder(n - 1, -r, width * wfactor);
    }
    glPopMatrix();
}
