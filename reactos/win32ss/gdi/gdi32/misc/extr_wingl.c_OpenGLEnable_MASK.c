#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int /*<<< orphan*/  FARPROC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  glChoosePixelFormat ; 
 int /*<<< orphan*/  glDescribePixelFormat ; 
 int /*<<< orphan*/  glGetPixelFormat ; 
 int /*<<< orphan*/  glSetPixelFormat ; 
 int /*<<< orphan*/  glSwapBuffers ; 
 int /*<<< orphan*/  hOpenGL ; 

__attribute__((used)) static BOOL FUNC4(void)
{
    HMODULE hModOpengl32;
    BOOL Ret = TRUE;

    hModOpengl32 = FUNC2(L"OPENGL32.DLL");
    if (hModOpengl32 == NULL)
        return FALSE;

    if (FUNC1((PVOID*)&hOpenGL,
                                          (PVOID)hModOpengl32,
                                          NULL) != NULL)
    {
        FUNC0(hModOpengl32);

        /* NOTE: Even though another thread was faster loading the
                 library we can't just bail out here. We really need
                 to *try* to locate every function. This is slow but
                 thread-safe */
    }

    /* The cast is required on x64, because FARPROC has INT_PTR sized return */
    if (!FUNC3("wglChoosePixelFormat", (FARPROC*)&glChoosePixelFormat))
        Ret = FALSE;

    if (!FUNC3("wglSetPixelFormat", (FARPROC*)&glSetPixelFormat))
        Ret = FALSE;

    if (!FUNC3("wglSwapBuffers", (FARPROC*)&glSwapBuffers))
        Ret = FALSE;

    if (!FUNC3("wglDescribePixelFormat", (FARPROC*)&glDescribePixelFormat))
        Ret = FALSE;

    if (!FUNC3("wglGetPixelFormat", (FARPROC*)&glGetPixelFormat))
        Ret = FALSE;

    return Ret;
}