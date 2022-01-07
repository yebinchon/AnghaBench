
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ PVOID ;
typedef int PKEVENT ;
typedef int NTSTATUS ;


 int DbgPrint (char*,int ) ;
 int FALSE ;
 int KeSetEvent (int ,int ,int ) ;
 int LocalAddress ;
 int MAX_TRACE ;
 int MIN_TRACE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int OpenError ;
 int TDI_DbgPrint (int ,char*) ;
 int TEST_PORT ;
 int TRUE ;
 int TdiOpenTransport (int ,int ,int *,int *) ;
 int TdiQueryAddress (int ,int *) ;
 int TdiTransport ;
 int TdiTransportObject ;
 int UDP_DEVICE_NAME ;

VOID TdiOpenThread(
    PVOID Context)





{
 NTSTATUS Status;

 TDI_DbgPrint(MAX_TRACE, ("Called.\n"));

 OpenError = TRUE;

 Status = TdiOpenTransport(UDP_DEVICE_NAME, TEST_PORT, &TdiTransport, &TdiTransportObject);

 if (NT_SUCCESS(Status))
  {
   Status = TdiQueryAddress(TdiTransportObject, &LocalAddress);

   if (NT_SUCCESS(Status))
    {
     OpenError = FALSE;
     DbgPrint("Using local IP address 0x%X\n", LocalAddress);
    }
   else
    {
     TDI_DbgPrint(MIN_TRACE, ("Unable to determine local IP address.\n"));
    }
   }
 else
  TDI_DbgPrint(MIN_TRACE, ("Cannot open transport (Status = 0x%X).\n", Status));

 TDI_DbgPrint(MAX_TRACE, ("Setting close event.\n"));

 KeSetEvent((PKEVENT)Context, 0, FALSE);

 TDI_DbgPrint(MIN_TRACE, ("Leaving.\n"));
}
