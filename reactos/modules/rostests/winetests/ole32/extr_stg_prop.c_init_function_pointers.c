
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 void* pFmtIdToPropStgName ;
 void* pPropStgNameToFmtId ;
 void* pStgCreatePropSetStg ;
 void* pStgCreatePropStg ;
 void* pStgOpenPropStg ;

__attribute__((used)) static void init_function_pointers(void)
{
    HMODULE hmod = GetModuleHandleA("ole32.dll");
    pFmtIdToPropStgName = (void*)GetProcAddress(hmod, "FmtIdToPropStgName");
    pPropStgNameToFmtId = (void*)GetProcAddress(hmod, "PropStgNameToFmtId");
    pStgCreatePropSetStg = (void*)GetProcAddress(hmod, "StgCreatePropSetStg");
    pStgCreatePropStg = (void*)GetProcAddress(hmod, "StgCreatePropStg");
    pStgOpenPropStg = (void*)GetProcAddress(hmod, "StgOpenPropStg");
}
