
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dllpath ;
typedef int * HINSTANCE ;


 int GetModuleFileName (int *,char*,int) ;
 int * LoadLibrary (char*) ;
 int MAX_PATH ;
 int strcat (char*,char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static HINSTANCE load_hook_dll()
{
    HINSTANCE hinstDll;
    char dllpath[MAX_PATH];
    char* p;

    hinstDll=LoadLibrary("hook.dll");
    if (hinstDll != ((void*)0))
        return hinstDll;

    if (!GetModuleFileName(((void*)0),dllpath,sizeof(dllpath)))
        return ((void*)0);

    p=strrchr(dllpath,'\\');
    if (!p)
        return ((void*)0);
    *p='\0';
    p=strrchr(dllpath,'\\');
    if (!p)
        return ((void*)0);
    *p='\0';
    strcat(dllpath,"\\hookdll\\hook.dll");
    hinstDll=LoadLibrary(dllpath);
    return hinstDll;
}
