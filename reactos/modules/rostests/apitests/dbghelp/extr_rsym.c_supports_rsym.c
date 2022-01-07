
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int SizeOfStruct; scalar_t__ SymType; char CVSig; } ;
typedef int ModuleInfo ;
typedef TYPE_1__ IMAGEHLP_MODULE64 ;
typedef int HANDLE ;
typedef int DWORD64 ;
typedef int BOOL ;


 scalar_t__ SymDia ;
 int SymGetModuleInfo64 (int ,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static BOOL supports_rsym(HANDLE hProc, DWORD64 BaseAddress)
{
    IMAGEHLP_MODULE64 ModuleInfo;
    BOOL Ret;

    memset(&ModuleInfo, 0, sizeof(ModuleInfo));
    ModuleInfo.SizeOfStruct = sizeof(ModuleInfo);
    Ret = SymGetModuleInfo64(hProc, BaseAddress, &ModuleInfo);

    return Ret &&
        ModuleInfo.SymType == SymDia &&
        ModuleInfo.CVSig == ('R' | ('S' << 8) | ('Y' << 16) | ('M' << 24));
}
