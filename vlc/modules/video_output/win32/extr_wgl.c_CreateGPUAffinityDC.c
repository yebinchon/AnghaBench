
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * affinityHDC; int hvideownd; } ;
typedef TYPE_1__ vout_display_sys_t ;
struct TYPE_6__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vlc_gl_t ;
typedef int UINT ;
typedef int PIXELFORMATDESCRIPTOR ;
typedef int (* PFNWGLENUMGPUSNVPROC ) (int ,int **) ;
typedef int * (* PFNWGLCREATEAFFINITYDCNVPROC ) (int **) ;
typedef int * HGPUNV ;
typedef int HGLRC ;
typedef int * HDC ;


 int ChoosePixelFormat (int *,int *) ;
 int * GetDC (int ) ;
 int SetPixelFormat (int *,int ,int *) ;
 int VLC_PFD_INITIALIZER ;
 int msg_Dbg (TYPE_2__*,char*,int ) ;
 int wglCreateContext (int *) ;
 int wglDeleteContext (int ) ;
 int wglGetProcAddress (char*) ;
 int wglMakeCurrent (int *,int ) ;

__attribute__((used)) static void CreateGPUAffinityDC(vlc_gl_t *gl, UINT nVidiaAffinity) {
    vout_display_sys_t *sys = gl->sys;

    PIXELFORMATDESCRIPTOR pfd = VLC_PFD_INITIALIZER;


    HDC winDC = GetDC(sys->hvideownd);
    SetPixelFormat(winDC, ChoosePixelFormat(winDC, &pfd), &pfd);
    HGLRC hGLRC = wglCreateContext(winDC);
    wglMakeCurrent(winDC, hGLRC);


    PFNWGLENUMGPUSNVPROC fncEnumGpusNV = (PFNWGLENUMGPUSNVPROC)wglGetProcAddress("wglEnumGpusNV");
    PFNWGLCREATEAFFINITYDCNVPROC fncCreateAffinityDCNV = (PFNWGLCREATEAFFINITYDCNVPROC)wglGetProcAddress("wglCreateAffinityDCNV");


    wglDeleteContext(hGLRC);


    if (!fncEnumGpusNV || !fncCreateAffinityDCNV) return;


    HGPUNV GpuMask[2];
    GpuMask[0] = ((void*)0);
    GpuMask[1] = ((void*)0);
    HGPUNV hGPU;
    if (!fncEnumGpusNV(nVidiaAffinity, &hGPU)) return;


    GpuMask[0] = hGPU;
    sys->affinityHDC = fncCreateAffinityDCNV(GpuMask);
    if (sys->affinityHDC == ((void*)0)) return;
    SetPixelFormat(sys->affinityHDC,
        ChoosePixelFormat(sys->affinityHDC, &pfd), &pfd);

    msg_Dbg(gl, "GPU affinity set to adapter: %d", nVidiaAffinity);
}
