
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {TYPE_1__* Parameters; int * FunctionName; int * FileName; } ;
struct TYPE_4__ {int * ValueName; } ;
typedef TYPE_2__* PROSSYM_LINEINFO ;


 int free (int *) ;

VOID RosSymFreeInfo(PROSSYM_LINEINFO LineInfo)
{
    int i;
 free(LineInfo->FileName);
 LineInfo->FileName = ((void*)0);
 free(LineInfo->FunctionName);
 LineInfo->FunctionName = ((void*)0);
    for (i = 0; i < sizeof(LineInfo->Parameters)/sizeof(LineInfo->Parameters[0]); i++)
        free(LineInfo->Parameters[i].ValueName);
}
