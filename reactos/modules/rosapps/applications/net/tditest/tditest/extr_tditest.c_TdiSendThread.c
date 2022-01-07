
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef char UCHAR ;
struct TYPE_3__ {long QuadPart; } ;
typedef int PVOID ;
typedef int * PKEVENT ;
typedef char* NTSTATUS ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int KEVENT ;
typedef int Data ;


 int DbgPrint (char*,char*) ;
 int Executive ;
 int FALSE ;
 int KeInitializeEvent (int *,int ,int ) ;
 scalar_t__ KeReadStateEvent (int *) ;
 int KeWaitForMultipleObjects (int,int ,int ,int ,int ,int ,TYPE_1__*,int *) ;
 int KernelMode ;
 int LocalAddress ;
 int MAX_TRACE ;
 scalar_t__ NT_SUCCESS (char*) ;
 int OpenError ;
 int PsTerminateSystemThread (char*) ;
 char* STATUS_SUCCESS ;
 int StopEvent ;
 int SynchronizationEvent ;
 int TDI_DbgPrint (int ,char*) ;
 int TEST_PORT ;
 char* TdiSendDatagram (int ,int ,int ,char*,int) ;
 int TdiTransportObject ;
 int WaitAny ;

VOID TdiSendThread(
    PVOID Context)







{
 KEVENT Event;
 PKEVENT Events[2];
 LARGE_INTEGER Timeout;
 NTSTATUS Status = STATUS_SUCCESS;
 UCHAR Data[40] = "Testing one, two, three, ...";

 if (!OpenError)
  {
   Timeout.QuadPart = 10000000L;
   Timeout.QuadPart *= 2;
   Timeout.QuadPart = -(Timeout.QuadPart);

   KeInitializeEvent(&Event, SynchronizationEvent, FALSE);

   Events[0] = &StopEvent;
   Events[1] = &Event;

   while (NT_SUCCESS(Status))
    {

      KeWaitForMultipleObjects( 2, (PVOID)Events, WaitAny, Executive, KernelMode, FALSE, &Timeout, ((void*)0));

     if (KeReadStateEvent(&StopEvent) != 0)
      {
       TDI_DbgPrint(MAX_TRACE, ("Received terminate signal...\n"));
       break;
      }

     DbgPrint("Sending data - '%s'\n", Data);

     Status = TdiSendDatagram(TdiTransportObject, TEST_PORT, LocalAddress, Data, sizeof(Data));

     if (!NT_SUCCESS(Status))
      DbgPrint("Failed sending data (Status = 0x%X)\n", Status);
    }
  }

 TDI_DbgPrint(MAX_TRACE, ("Terminating send thread...\n"));

 PsTerminateSystemThread(STATUS_SUCCESS);
}
