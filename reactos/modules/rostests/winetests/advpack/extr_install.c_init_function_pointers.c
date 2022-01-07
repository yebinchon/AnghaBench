
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibraryA (char*) ;
 int TRUE ;
 int hAdvPack ;
 void* pLaunchINFSection ;
 void* pLaunchINFSectionEx ;
 void* pRunSetupCommand ;

__attribute__((used)) static BOOL init_function_pointers(void)
{
    hAdvPack = LoadLibraryA("advpack.dll");
    if (!hAdvPack)
        return FALSE;

    pRunSetupCommand = (void *)GetProcAddress(hAdvPack, "RunSetupCommand");
    pLaunchINFSection = (void *)GetProcAddress(hAdvPack, "LaunchINFSection");
    pLaunchINFSectionEx = (void *)GetProcAddress(hAdvPack, "LaunchINFSectionEx");

    if (!pRunSetupCommand || !pLaunchINFSection || !pLaunchINFSectionEx)
        return FALSE;

    return TRUE;
}
