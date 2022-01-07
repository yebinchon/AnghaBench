
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {unsigned short flags; unsigned short num_data_items; } ;
struct TYPE_8__ {int flags; int frag_len; scalar_t__ call_id; } ;
struct TYPE_9__ {TYPE_1__ http; TYPE_2__ common; } ;
typedef TYPE_3__ RpcPktHdr ;


 int ERR (char*) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int PKT_HTTP ;
 int RPCRT4_BuildCommonHeader (TYPE_3__*,int ,int ) ;
 int RPC_FLG_FIRST ;
 int RPC_FLG_LAST ;

RpcPktHdr *RPCRT4_BuildHttpHeader(ULONG DataRepresentation,
                                  unsigned short flags,
                                  unsigned short num_data_items,
                                  unsigned int payload_size)
{
  RpcPktHdr *header;

  header = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(header->http) + payload_size);
  if (header == ((void*)0)) {
      ERR("failed to allocate memory\n");
    return ((void*)0);
  }

  RPCRT4_BuildCommonHeader(header, PKT_HTTP, DataRepresentation);


  header->common.flags = RPC_FLG_FIRST|RPC_FLG_LAST;
  header->common.call_id = 0;
  header->common.frag_len = sizeof(header->http) + payload_size;
  header->http.flags = flags;
  header->http.num_data_items = num_data_items;

  return header;
}
