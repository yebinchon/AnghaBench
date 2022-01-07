
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 void* pSHCreateQueryCancelAutoPlayMoniker ;
 void* pSHCreateSessionKey ;
 void* pSHPropStgCreate ;
 void* pSHPropStgReadMultiple ;
 void* pSHPropStgWriteMultiple ;

__attribute__((used)) static void init(void)
{
    HMODULE hmod = GetModuleHandleA("shell32.dll");

    pSHPropStgCreate = (void*)GetProcAddress(hmod, "SHPropStgCreate");
    pSHPropStgReadMultiple = (void*)GetProcAddress(hmod, "SHPropStgReadMultiple");
    pSHPropStgWriteMultiple = (void*)GetProcAddress(hmod, "SHPropStgWriteMultiple");
    pSHCreateQueryCancelAutoPlayMoniker = (void*)GetProcAddress(hmod, "SHCreateQueryCancelAutoPlayMoniker");
    pSHCreateSessionKey = (void*)GetProcAddress(hmod, (char*)723);
}
