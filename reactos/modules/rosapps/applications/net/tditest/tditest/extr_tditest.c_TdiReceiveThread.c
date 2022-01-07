
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int PVOID ;
typedef scalar_t__ NTSTATUS ;
typedef int Data ;


 int DbgPrint (char*,int *) ;
 int MAX_TRACE ;
 int MIN_TRACE ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 int OpenError ;
 int PsTerminateSystemThread (scalar_t__) ;
 int RtlZeroMemory (int *,int) ;
 scalar_t__ STATUS_CANCELLED ;
 scalar_t__ STATUS_SUCCESS ;
 int TDI_DbgPrint (int ,char*) ;
 int TEST_PORT ;
 scalar_t__ TdiReceiveDatagram (int ,int ,int*,int *,int*) ;
 int TdiTransportObject ;

VOID TdiReceiveThread(
    PVOID Context)







{
 ULONG Address;
 UCHAR Data[40];
 ULONG Size;
 NTSTATUS Status = STATUS_SUCCESS;

 if (!OpenError)
  {
   while (NT_SUCCESS(Status))
    {
     Size = sizeof(Data);
     RtlZeroMemory(Data, Size);

     Status = TdiReceiveDatagram(TdiTransportObject, TEST_PORT, &Address, Data, &Size);

     if (NT_SUCCESS(Status))
      {
       DbgPrint("Received data - '%s'\n", Data);
      }
     else
      if (Status != STATUS_CANCELLED)
       {
        TDI_DbgPrint(MIN_TRACE, ("Receive error (Status = 0x%X).\n", Status));
       }
      else
       {
        TDI_DbgPrint(MAX_TRACE, ("IRP was cancelled.\n"));
       }
    }
  }

 TDI_DbgPrint(MAX_TRACE, ("Terminating receive thread...\n"));

 PsTerminateSystemThread(STATUS_SUCCESS);
}
