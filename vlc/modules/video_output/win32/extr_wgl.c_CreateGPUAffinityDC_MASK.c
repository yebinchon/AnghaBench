#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * affinityHDC; int /*<<< orphan*/  hvideownd; } ;
typedef  TYPE_1__ vout_display_sys_t ;
struct TYPE_6__ {TYPE_1__* sys; } ;
typedef  TYPE_2__ vlc_gl_t ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  PIXELFORMATDESCRIPTOR ;
typedef  int /*<<< orphan*/  (* PFNWGLENUMGPUSNVPROC ) (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ;
typedef  int /*<<< orphan*/ * (* PFNWGLCREATEAFFINITYDCNVPROC ) (int /*<<< orphan*/ **) ;
typedef  int /*<<< orphan*/ * HGPUNV ;
typedef  int /*<<< orphan*/  HGLRC ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VLC_PFD_INITIALIZER ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(vlc_gl_t *gl, UINT nVidiaAffinity) {
    vout_display_sys_t *sys = gl->sys;

    PIXELFORMATDESCRIPTOR pfd = VLC_PFD_INITIALIZER;

    /* create a temporary GL context */
    HDC winDC = FUNC1(sys->hvideownd);
    FUNC2(winDC, FUNC0(winDC, &pfd), &pfd);
    HGLRC hGLRC = FUNC4(winDC);
    FUNC7(winDC, hGLRC);

    /* Initialize the necessary function pointers */
    PFNWGLENUMGPUSNVPROC fncEnumGpusNV = (PFNWGLENUMGPUSNVPROC)FUNC6("wglEnumGpusNV");
    PFNWGLCREATEAFFINITYDCNVPROC fncCreateAffinityDCNV = (PFNWGLCREATEAFFINITYDCNVPROC)FUNC6("wglCreateAffinityDCNV");

    /* delete the temporary GL context */
    FUNC5(hGLRC);

    /* see if we have the extensions */
    if (!fncEnumGpusNV || !fncCreateAffinityDCNV) return;

    /* find the graphics card */
    HGPUNV GpuMask[2];
    GpuMask[0] = NULL;
    GpuMask[1] = NULL;
    HGPUNV hGPU;
    if (!fncEnumGpusNV(nVidiaAffinity, &hGPU)) return;

    /* make the affinity DC */
    GpuMask[0] = hGPU;
    sys->affinityHDC = fncCreateAffinityDCNV(GpuMask);
    if (sys->affinityHDC == NULL) return;
    FUNC2(sys->affinityHDC,
        FUNC0(sys->affinityHDC, &pfd), &pfd);

    FUNC3(gl, "GPU affinity set to adapter: %d", nVidiaAffinity);
}