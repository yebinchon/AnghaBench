
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PAINTSTRUCT ;
typedef int HWND ;
typedef int HDC ;


 int BeginPaint (int ,int *) ;
 int DrawCylinder (int ,int,double) ;
 int EndPaint (int ,int *) ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int HLStoRGB (int,double,double,int *,int *,int *) ;
 int SwapBuffers (int ) ;
 int angle ;
 int bval ;
 int colorh ;
 int glClear (int) ;
 int glRotatef (int,double,double,double) ;
 int gval ;
 int lvls ;
 int rval ;

void DrawScene(HWND hwnd, HDC dc, int ticks)
{
    PAINTSTRUCT ps;
    dc = BeginPaint(hwnd, &ps);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glRotatef(ticks * 0.01, 0.0, 1.0, -0.5);
    angle += ticks * 0.01;
    colorh += ticks * 0.003;
    if (colorh > 360.0) colorh -= 360.0;
    HLStoRGB(colorh, 1.0, 0.7, &rval, &gval, &bval);
    DrawCylinder(lvls, angle, 0.2);
    SwapBuffers(dc);
    EndPaint(hwnd, &ps);
}
