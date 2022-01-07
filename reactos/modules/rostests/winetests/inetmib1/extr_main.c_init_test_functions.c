
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HMODULE ;


 scalar_t__ GetProcAddress (int *,char*) ;
 int * LoadLibraryA (char*) ;
 int ok (int ,char*) ;
 void* pSnmpExtensionInit ;
 void* pSnmpExtensionQuery ;

__attribute__((used)) static HMODULE init_test_functions(void)
{
    HMODULE mod = LoadLibraryA("inetmib1");

    ok(mod != ((void*)0), "failed to load inetmib1.dll\n");

    if (!mod) return ((void*)0);

    pSnmpExtensionInit = (void *)GetProcAddress(mod, "SnmpExtensionInit");
    pSnmpExtensionQuery = (void *)GetProcAddress(mod, "SnmpExtensionQuery");

    return mod;
}
