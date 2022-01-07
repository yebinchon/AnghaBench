
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cy; } ;
struct TYPE_6__ {int Count; int * Value; } ;
typedef TYPE_1__ ARGS ;


 int DisplayMemory (TYPE_1__*) ;
 int DisplayRegs () ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 size_t OUTPUT_WINDOW ;
 int OldOffset ;
 int OldSelector ;
 int PICE_memset (TYPE_1__*,int ,int) ;
 int Print (size_t,char*) ;
 int PrintRingBuffer (scalar_t__) ;
 int PrintTemplate () ;
 int ShowStatusLine () ;
 int ShowStoppedMsg () ;
 int Unassemble (TYPE_1__*) ;
 scalar_t__ ulLastDisassEndAddress ;
 scalar_t__ ulLastDisassStartAddress ;
 TYPE_2__* wWindow ;

void RepaintDesktop(void)
{
    ARGS Args;

    ENTER_FUNC();

    PrintTemplate();

    DisplayRegs();


 Args.Value[0]=OldSelector;
 Args.Value[1]=OldOffset;
 Args.Count=2;
 DisplayMemory(&Args);


    PICE_memset(&Args,0,sizeof(ARGS));

    ulLastDisassStartAddress=ulLastDisassEndAddress=0;
 Args.Count=0;
 Unassemble(&Args);

    PrintRingBuffer(wWindow[OUTPUT_WINDOW].cy-1);
    Print(OUTPUT_WINDOW,"");

    ShowStoppedMsg();
    ShowStatusLine();

    LEAVE_FUNC();
}
