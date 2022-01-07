
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UUID ;
typedef int ULONG ;
struct TYPE_9__ {unsigned short opnum; scalar_t__ context_id; int alloc_hint; } ;
struct TYPE_7__ {int frag_len; int flags; } ;
struct TYPE_8__ {TYPE_3__ request; TYPE_1__ common; } ;
typedef TYPE_2__ RpcPktHdr ;
typedef int RPC_STATUS ;
typedef int BOOL ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int PKT_REQUEST ;
 int RPCRT4_BuildCommonHeader (TYPE_2__*,int ,int ) ;
 int RPC_FLG_OBJECT_UUID ;
 int UuidIsNil (int *,int *) ;
 int memcpy (TYPE_3__*,int *,int) ;

__attribute__((used)) static RpcPktHdr *RPCRT4_BuildRequestHeader(ULONG DataRepresentation,
                                     ULONG BufferLength,
                                     unsigned short ProcNum,
                                     UUID *ObjectUuid)
{
  RpcPktHdr *header;
  BOOL has_object;
  RPC_STATUS status;

  has_object = (ObjectUuid != ((void*)0) && !UuidIsNil(ObjectUuid, &status));
  header = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                     sizeof(header->request) + (has_object ? sizeof(UUID) : 0));
  if (header == ((void*)0)) {
    return ((void*)0);
  }

  RPCRT4_BuildCommonHeader(header, PKT_REQUEST, DataRepresentation);
  header->common.frag_len = sizeof(header->request);
  header->request.alloc_hint = BufferLength;
  header->request.context_id = 0;
  header->request.opnum = ProcNum;
  if (has_object) {
    header->common.flags |= RPC_FLG_OBJECT_UUID;
    header->common.frag_len += sizeof(UUID);
    memcpy(&header->request + 1, ObjectUuid, sizeof(UUID));
  }

  return header;
}
