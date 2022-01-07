
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int GdiSharedHandleTable; } ;
struct TYPE_4__ {TYPE_2__* ProcessEnvironmentBlock; } ;
typedef TYPE_1__* PTEB ;
typedef TYPE_2__* PPEB ;
typedef int PGDI_TABLE_ENTRY ;


 TYPE_1__* NtCurrentTeb () ;

__attribute__((used)) static
PGDI_TABLE_ENTRY
MyGdiQueryTable()
{
 PTEB pTeb = NtCurrentTeb();
 PPEB pPeb = pTeb->ProcessEnvironmentBlock;
 return pPeb->GdiSharedHandleTable;
}
