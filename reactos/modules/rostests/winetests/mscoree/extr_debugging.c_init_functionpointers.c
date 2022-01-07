
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int FreeLibrary (int ) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibraryA (char*) ;
 int TRUE ;
 int hmscoree ;
 void* pCreateDebuggingInterfaceFromVersion ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL init_functionpointers(void)
{
    hmscoree = LoadLibraryA("mscoree.dll");

    if (!hmscoree)
    {
        win_skip("mscoree.dll not available\n");
        return FALSE;
    }

    pCreateDebuggingInterfaceFromVersion = (void *)GetProcAddress(hmscoree, "CreateDebuggingInterfaceFromVersion");

    if (!pCreateDebuggingInterfaceFromVersion)
    {
        win_skip("functions not available\n");
        FreeLibrary(hmscoree);
        return FALSE;
    }

    return TRUE;
}
