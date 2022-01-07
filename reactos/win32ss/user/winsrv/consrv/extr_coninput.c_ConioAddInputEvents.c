
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_5__ {int InputBuffer; } ;
typedef scalar_t__* PULONG ;
typedef int PINPUT_RECORD ;
typedef TYPE_1__* PCONSRV_CONSOLE ;
typedef int PCONSOLE ;
typedef scalar_t__ NTSTATUS ;
typedef int BOOLEAN ;


 scalar_t__ ConDrvWriteConsoleInput (int ,int *,int ,int ,scalar_t__,scalar_t__*) ;
 int PostprocessInput (TYPE_1__*) ;
 scalar_t__ PreprocessInput (TYPE_1__*,int ,scalar_t__) ;
 scalar_t__ STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS
ConioAddInputEvents(PCONSRV_CONSOLE Console,
                    PINPUT_RECORD InputRecords,
                    ULONG NumEventsToWrite,
                    PULONG NumEventsWritten,
                    BOOLEAN AppendToEnd)
{
    NTSTATUS Status = STATUS_SUCCESS;

    if (NumEventsWritten) *NumEventsWritten = 0;

    NumEventsToWrite = PreprocessInput(Console, InputRecords, NumEventsToWrite);
    if (NumEventsToWrite == 0) return STATUS_SUCCESS;







    Status = ConDrvWriteConsoleInput((PCONSOLE)Console,
                                     &Console->InputBuffer,
                                     AppendToEnd,
                                     InputRecords,
                                     NumEventsToWrite,
                                     NumEventsWritten);


    if (Status == STATUS_SUCCESS) PostprocessInput(Console);

    return Status;
}
