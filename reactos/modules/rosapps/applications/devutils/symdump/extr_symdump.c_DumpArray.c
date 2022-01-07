
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int dwModuleBase; int hProcess; } ;
typedef TYPE_1__* PENUMINFO ;
typedef int INT ;
typedef int DWORD ;


 int DumpType (int ,TYPE_1__*,int ,int ) ;
 int FALSE ;
 int SymGetTypeInfo (int ,int ,int ,int ,int *) ;
 int TI_GET_TYPE ;

VOID
DumpArray(DWORD dwTypeIndex, PENUMINFO pei, INT indent)
{
 DWORD dwTypeId;

 SymGetTypeInfo(pei->hProcess, pei->dwModuleBase, dwTypeIndex, TI_GET_TYPE, &dwTypeId);
 DumpType(dwTypeId, pei, indent, FALSE);
}
