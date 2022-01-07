
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_3__ {int UserContext; int (* UserComplete ) (int ,int ,int ) ;} ;
typedef int PVOID ;
typedef TYPE_1__* PDATAGRAM_RECEIVE_REQUEST ;
typedef int NTSTATUS ;


 int DATAGRAM_RECV_TAG ;
 int ExFreePoolWithTag (TYPE_1__*,int ) ;
 int MAX_TRACE ;
 int TI_DbgPrint (int ,char*) ;
 int stub1 (int ,int ,int ) ;

VOID DGReceiveComplete(PVOID Context, NTSTATUS Status, ULONG Count) {
    PDATAGRAM_RECEIVE_REQUEST ReceiveRequest =
 (PDATAGRAM_RECEIVE_REQUEST)Context;
    TI_DbgPrint(MAX_TRACE,("Called (%08x:%08x)\n", Status, Count));
    ReceiveRequest->UserComplete( ReceiveRequest->UserContext, Status, Count );
    ExFreePoolWithTag( ReceiveRequest, DATAGRAM_RECV_TAG );
    TI_DbgPrint(MAX_TRACE,("Done\n"));
}
