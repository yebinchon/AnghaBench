
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nSize; int nVersion; int dwFlags; int cColorBits; int cDepthBits; } ;
typedef TYPE_1__ PIXELFORMATDESCRIPTOR ;
typedef int HWND ;
typedef int HGLRC ;
typedef int HDC ;


 int ChoosePixelFormat (int ,TYPE_1__*) ;
 int DescribePixelFormat (int ,int,int,TYPE_1__*) ;
 int GetDC (int ) ;
 int PFD_DOUBLEBUFFER ;
 int PFD_DRAW_TO_WINDOW ;
 int PFD_SUPPORT_OPENGL ;
 int ReleaseDC (int ,int ) ;
 int SetPixelFormat (int ,int,TYPE_1__*) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int wglCreateContext (int ) ;
 int wglMakeCurrent (int ,int ) ;

HGLRC InitOGLWindow(HWND hWnd)
{
 HDC hDC = GetDC(hWnd);
 HGLRC hRC = 0;
 PIXELFORMATDESCRIPTOR pfd;
 int nFormat;

 ZeroMemory(&pfd, sizeof(PIXELFORMATDESCRIPTOR));

 pfd.nSize = sizeof(PIXELFORMATDESCRIPTOR);
 pfd.nVersion = 1;
 pfd.dwFlags = PFD_SUPPORT_OPENGL | PFD_DRAW_TO_WINDOW | PFD_DOUBLEBUFFER;
 pfd.cColorBits = 24;
 pfd.cDepthBits = 24;

 nFormat = ChoosePixelFormat(hDC, &pfd);
 DescribePixelFormat(hDC, nFormat, sizeof(PIXELFORMATDESCRIPTOR), &pfd);
 SetPixelFormat(hDC, nFormat, &pfd);

 hRC = wglCreateContext(hDC);
 wglMakeCurrent(hDC, hRC);

 ReleaseDC(hWnd, hDC);

 return hRC;
}
