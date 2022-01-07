
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PINPUT_RECORD ;
typedef int PCONSRV_CONSOLE ;
typedef int NTSTATUS ;


 int ConioAddInputEvents (int ,int ,int,int *,int ) ;
 int TRUE ;

NTSTATUS
ConioProcessInputEvent(PCONSRV_CONSOLE Console,
                       PINPUT_RECORD InputEvent)
{
    ULONG NumEventsWritten;
    return ConioAddInputEvents(Console,
                               InputEvent,
                               1,
                               &NumEventsWritten,
                               TRUE);
}
