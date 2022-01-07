
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 scalar_t__ CABINET_hInstance ;
 int ERR (char*) ;
 int FALSE ;
 scalar_t__ GetProcAddress (scalar_t__,char*) ;
 scalar_t__ LoadLibraryA (char*) ;
 int TRUE ;
 void* sc_FDICopy ;
 void* sc_FDICreate ;
 void* sc_FDIDestroy ;

__attribute__((used)) static BOOL LoadCABINETDll(void)
{
  if (!CABINET_hInstance) {
    CABINET_hInstance = LoadLibraryA("cabinet.dll");
    if (CABINET_hInstance) {
      sc_FDICreate = (void *)GetProcAddress(CABINET_hInstance, "FDICreate");
      sc_FDICopy = (void *)GetProcAddress(CABINET_hInstance, "FDICopy");
      sc_FDIDestroy = (void *)GetProcAddress(CABINET_hInstance, "FDIDestroy");
      return TRUE;
    } else {
      ERR("load cabinet dll failed.\n");
      return FALSE;
    }
  } else
    return TRUE;
}
