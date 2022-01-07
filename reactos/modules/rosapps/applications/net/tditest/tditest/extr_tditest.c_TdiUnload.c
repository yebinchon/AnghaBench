
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;
typedef int PDRIVER_OBJECT ;


 int Executive ;
 int FALSE ;
 int KeSetEvent (int *,int ,int ) ;
 int KeWaitForSingleObject (int ,int ,int ,int ,int *) ;
 int KernelMode ;
 int MAX_TRACE ;
 int ObReferenceObjectByHandle (int ,int ,int *,int ,int *,int *) ;
 int ReceiveThread ;
 int SendThread ;
 int StopEvent ;
 int TDI_DbgPrint (int ,char*) ;
 int THREAD_ALL_ACCESS ;
 int TdiCloseDevice (int ,int ) ;
 int TdiTransport ;
 int TdiTransportObject ;

VOID TdiUnload(
    PDRIVER_OBJECT DriverObject)





{
 PVOID ReceiveThreadObject = 0;
 PVOID SendThreadObject = 0;

 TDI_DbgPrint(MAX_TRACE, ("Setting stop flag\n"));


 ObReferenceObjectByHandle(SendThread, THREAD_ALL_ACCESS, ((void*)0), KernelMode, &SendThreadObject, ((void*)0));
 ObReferenceObjectByHandle(ReceiveThread, THREAD_ALL_ACCESS, ((void*)0), KernelMode, &ReceiveThreadObject, ((void*)0));

 KeSetEvent(&StopEvent, 0, FALSE);


 KeWaitForSingleObject(SendThreadObject, Executive, KernelMode, FALSE, ((void*)0));


 KeWaitForSingleObject(ReceiveThreadObject, Executive, KernelMode, FALSE, ((void*)0));


 TdiCloseDevice(TdiTransport, TdiTransportObject);
}
