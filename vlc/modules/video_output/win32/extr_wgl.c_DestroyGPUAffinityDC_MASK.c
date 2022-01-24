#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * affinityHDC; int /*<<< orphan*/  hvideownd; } ;
typedef  TYPE_1__ vout_display_sys_t ;
struct TYPE_5__ {TYPE_1__* sys; } ;
typedef  TYPE_2__ vlc_gl_t ;
typedef  int /*<<< orphan*/  PIXELFORMATDESCRIPTOR ;
typedef  int /*<<< orphan*/  (* PFNWGLDELETEDCNVPROC ) (int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  HGLRC ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VLC_PFD_INITIALIZER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(vlc_gl_t *gl) {
    vout_display_sys_t *sys = gl->sys;

    if (sys->affinityHDC == NULL) return;

    PIXELFORMATDESCRIPTOR pfd = VLC_PFD_INITIALIZER;

    /* create a temporary GL context */
    HDC winDC = FUNC1(sys->hvideownd);
    FUNC2(winDC, FUNC0(winDC, &pfd), &pfd);
    HGLRC hGLRC = FUNC3(winDC);
    FUNC6(winDC, hGLRC);

    /* Initialize the necessary function pointers */
    PFNWGLDELETEDCNVPROC fncDeleteDCNV = (PFNWGLDELETEDCNVPROC)FUNC5("wglDeleteDCNV");

    /* delete the temporary GL context */
    FUNC4(hGLRC);

    /* see if we have the extensions */
    if (!fncDeleteDCNV) return;

    /* delete the affinity DC */
    fncDeleteDCNV(sys->affinityHDC);
}