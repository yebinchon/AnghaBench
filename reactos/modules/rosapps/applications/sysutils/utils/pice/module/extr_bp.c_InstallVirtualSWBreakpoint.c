
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int szFunctionName; int szModName; int * Callback; void* bVirtual; void* bInstalled; void* bUsed; } ;
typedef TYPE_1__* PSW_BP ;
typedef int LPSTR ;
typedef void* BOOLEAN ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 void* FALSE ;
 TYPE_1__* FindEmptySwBpSlot () ;
 int LEAVE_FUNC () ;
 int PICE_strcpy (int ,int ) ;
 void* TRUE ;

BOOLEAN InstallVirtualSWBreakpoint(LPSTR ModName,LPSTR FunctionName)
{
    PSW_BP p;
    BOOLEAN bResult = FALSE;

    ENTER_FUNC();
    DPRINT((0,"InstallVirtualSWBreakpoint(%s!%s)\n",ModName,FunctionName));

    if( (p=FindEmptySwBpSlot()) )
    {
        DPRINT((0,"InstallVirtualSWBreakpoint(): found empty slot\n"));

        p->bUsed = TRUE;
        p->bInstalled = TRUE;
        p->bVirtual = TRUE;
  p->Callback = ((void*)0);
        PICE_strcpy(p->szModName,ModName);
        PICE_strcpy(p->szFunctionName,FunctionName);

        bResult = TRUE;
    }

    LEAVE_FUNC();

    return bResult;
}
