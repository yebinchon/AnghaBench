
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {int status; } ;
struct TYPE_7__ {int frag_len; } ;
struct TYPE_9__ {TYPE_2__ fault; TYPE_1__ common; } ;
typedef TYPE_3__ RpcPktHdr ;
typedef int RPC_STATUS ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int PKT_FAULT ;
 int RPCRT4_BuildCommonHeader (TYPE_3__*,int ,int ) ;

RpcPktHdr *RPCRT4_BuildFaultHeader(ULONG DataRepresentation, RPC_STATUS Status)
{
  RpcPktHdr *header;

  header = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(header->fault));
  if (header == ((void*)0)) {
    return ((void*)0);
  }

  RPCRT4_BuildCommonHeader(header, PKT_FAULT, DataRepresentation);
  header->common.frag_len = sizeof(header->fault);
  header->fault.status = Status;

  return header;
}
