
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int * HMODULE ;
typedef int FARPROC ;
typedef int BOOL ;


 int FALSE ;
 int FreeLibrary (int *) ;
 int * InterlockedCompareExchangePointer (int *,int ,int *) ;
 int * LoadLibraryW (char*) ;
 int OpenGLInitFunction (char*,int *) ;
 int TRUE ;
 int glChoosePixelFormat ;
 int glDescribePixelFormat ;
 int glGetPixelFormat ;
 int glSetPixelFormat ;
 int glSwapBuffers ;
 int hOpenGL ;

__attribute__((used)) static BOOL OpenGLEnable(void)
{
    HMODULE hModOpengl32;
    BOOL Ret = TRUE;

    hModOpengl32 = LoadLibraryW(L"OPENGL32.DLL");
    if (hModOpengl32 == ((void*)0))
        return FALSE;

    if (InterlockedCompareExchangePointer((PVOID*)&hOpenGL,
                                          (PVOID)hModOpengl32,
                                          ((void*)0)) != ((void*)0))
    {
        FreeLibrary(hModOpengl32);





    }


    if (!OpenGLInitFunction("wglChoosePixelFormat", (FARPROC*)&glChoosePixelFormat))
        Ret = FALSE;

    if (!OpenGLInitFunction("wglSetPixelFormat", (FARPROC*)&glSetPixelFormat))
        Ret = FALSE;

    if (!OpenGLInitFunction("wglSwapBuffers", (FARPROC*)&glSwapBuffers))
        Ret = FALSE;

    if (!OpenGLInitFunction("wglDescribePixelFormat", (FARPROC*)&glDescribePixelFormat))
        Ret = FALSE;

    if (!OpenGLInitFunction("wglGetPixelFormat", (FARPROC*)&glGetPixelFormat))
        Ret = FALSE;

    return Ret;
}
