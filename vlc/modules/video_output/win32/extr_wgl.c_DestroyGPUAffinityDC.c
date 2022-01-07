
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * affinityHDC; int hvideownd; } ;
typedef TYPE_1__ vout_display_sys_t ;
struct TYPE_5__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vlc_gl_t ;
typedef int PIXELFORMATDESCRIPTOR ;
typedef int (* PFNWGLDELETEDCNVPROC ) (int *) ;
typedef int HGLRC ;
typedef int HDC ;


 int ChoosePixelFormat (int ,int *) ;
 int GetDC (int ) ;
 int SetPixelFormat (int ,int ,int *) ;
 int VLC_PFD_INITIALIZER ;
 int wglCreateContext (int ) ;
 int wglDeleteContext (int ) ;
 int wglGetProcAddress (char*) ;
 int wglMakeCurrent (int ,int ) ;

__attribute__((used)) static void DestroyGPUAffinityDC(vlc_gl_t *gl) {
    vout_display_sys_t *sys = gl->sys;

    if (sys->affinityHDC == ((void*)0)) return;

    PIXELFORMATDESCRIPTOR pfd = VLC_PFD_INITIALIZER;


    HDC winDC = GetDC(sys->hvideownd);
    SetPixelFormat(winDC, ChoosePixelFormat(winDC, &pfd), &pfd);
    HGLRC hGLRC = wglCreateContext(winDC);
    wglMakeCurrent(winDC, hGLRC);


    PFNWGLDELETEDCNVPROC fncDeleteDCNV = (PFNWGLDELETEDCNVPROC)wglGetProcAddress("wglDeleteDCNV");


    wglDeleteContext(hGLRC);


    if (!fncDeleteDCNV) return;


    fncDeleteDCNV(sys->affinityHDC);
}
