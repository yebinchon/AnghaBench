
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_2__ {size_t nVerbs; int ** aVerbs; int lpTable; } ;
typedef int * LPCWSTR ;


 size_t MAX_MCICMDTABLE ;
 TYPE_1__* S_MciCmdTable ;
 scalar_t__ strcmpiW (int *,int *) ;

__attribute__((used)) static LPCWSTR MCI_FindCommand(UINT uTbl, LPCWSTR verb)
{
    UINT idx;

    if (uTbl >= MAX_MCICMDTABLE || !S_MciCmdTable[uTbl].lpTable)
 return ((void*)0);





    for (idx = 0; idx < S_MciCmdTable[uTbl].nVerbs; idx++) {
 if (strcmpiW(S_MciCmdTable[uTbl].aVerbs[idx], verb) == 0)
     return S_MciCmdTable[uTbl].aVerbs[idx];
    }

    return ((void*)0);
}
