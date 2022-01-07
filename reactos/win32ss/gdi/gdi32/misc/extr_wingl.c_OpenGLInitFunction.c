
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PVOID ;
typedef int PCSTR ;
typedef int FARPROC ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetProcAddress (int ,int ) ;
 int InterlockedCompareExchangePointer (int **,int *,int *) ;
 int TRUE ;
 int hOpenGL ;

__attribute__((used)) static BOOL OpenGLInitFunction(PCSTR name,
                               FARPROC *funcptr)
{
    PVOID func;

    func = (PVOID)GetProcAddress(hOpenGL, name);
    if (func != ((void*)0))
    {
        (void)InterlockedCompareExchangePointer((PVOID*)funcptr,
                                                func,
                                                ((void*)0));
        return TRUE;
    }

    return FALSE;
}
