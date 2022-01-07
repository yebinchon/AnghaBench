
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int dwModuleBase; int hProcess; } ;
typedef TYPE_1__* PENUMINFO ;
typedef int INT ;
typedef int HANDLE ;
typedef int DWORD64 ;
typedef int DWORD ;
typedef int BOOL ;


 int DumpArray (int,TYPE_1__*,int ) ;
 int DumpBaseType (int,TYPE_1__*,int ) ;
 int DumpEnum (int,TYPE_1__*,int ,int ) ;
 int DumpPointer (int,TYPE_1__*,int ) ;
 int DumpUDT (int,TYPE_1__*,int ,int ) ;
 int SymGetTypeInfo (int ,int ,int,int ,int*) ;






 int TI_GET_SYMTAG ;
 int printfi (char*,...) ;

VOID
DumpType(DWORD dwTypeIndex, PENUMINFO pei, INT indent, BOOL bMembers)
{
 HANDLE hProcess = pei->hProcess;
 DWORD64 dwModuleBase = pei->dwModuleBase;
 DWORD dwTag = 0;

 SymGetTypeInfo(hProcess, dwModuleBase, dwTypeIndex, TI_GET_SYMTAG, &dwTag);

 switch (dwTag)
 {
 case 131:
  DumpEnum(dwTypeIndex, pei, indent, bMembers);
  break;

 case 128:
  DumpUDT(dwTypeIndex, pei, indent, bMembers);
  break;

 case 129:
  DumpPointer(dwTypeIndex, pei, indent);
  break;

 case 132:
  DumpBaseType(dwTypeIndex, pei, indent);
  break;

 case 133:
  DumpArray(dwTypeIndex, pei, indent);
  break;

 case 130:
  printfi("function");
  break;

 default:
  printfi("typeTag%ld", dwTag);
  break;
 }

}
