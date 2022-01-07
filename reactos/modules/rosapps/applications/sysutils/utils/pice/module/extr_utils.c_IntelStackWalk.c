
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PVOID ;
typedef int* PULONG ;
typedef int LPSTR ;


 int DPRINT (int ) ;
 scalar_t__ FALSE ;
 int FindFunctionByAddress (int,int *,int *) ;
 int IsRangeValid (int,int) ;
 int OUTPUT_WINDOW ;
 int PICE_sprintf (int ,char*,int,int,...) ;
 int Print (int ,int ) ;
 int PutStatusText (char*) ;
 scalar_t__ WaitForKey () ;
 int tempUtil ;

void IntelStackWalk(ULONG pc,ULONG ebp,ULONG esp)
{
    PULONG pFrame, pPrevFrame;
    LPSTR pSymbolName;

    DPRINT((0,"IntelStackWalk(): pc = %X ebp = %X esp = %X\n",pc,ebp,esp));

    pFrame = pPrevFrame = (PULONG)ebp;

    PutStatusText("EIP      FRAME    NAME\n");
    while(1)
    {
        DPRINT((0,"IntelStackWalk(): pFrame = %X pPrevFrame = %X pc =%X\n",(ULONG)pFrame,(ULONG)pPrevFrame,pc));
        if ( ( (ULONG)pFrame & 3 ) ||
             ( (pFrame <= pPrevFrame) ) )
        {
            DPRINT((0,"IntelStackWalk(): pFrame is either unaligned or not less than previous\n"));
            if( !IsRangeValid((ULONG)pFrame, sizeof(PVOID)*2) )
            {
                DPRINT((0,"IntelStackWalk(): pFrame not valid pointer!\n"));
                break;
            }
        }

        if((pSymbolName = FindFunctionByAddress(pc,((void*)0),((void*)0))) )
      PICE_sprintf(tempUtil,"%08X %08X %s\n",pc, (ULONG)pFrame,pSymbolName);
  else
      PICE_sprintf(tempUtil,"%08X %08X\n",pc, (ULONG)pFrame);
        Print(OUTPUT_WINDOW,tempUtil);
        if(WaitForKey()==FALSE)break;

        pc = pFrame[1];

        pPrevFrame = pFrame;

        pFrame = (PULONG)pFrame[0];
    }
}
