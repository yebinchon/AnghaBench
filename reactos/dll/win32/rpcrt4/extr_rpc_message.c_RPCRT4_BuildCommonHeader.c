
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_4__ {unsigned char ptype; int call_id; scalar_t__ flags; scalar_t__ auth_len; void** drep; int rpc_ver_minor; int rpc_ver; } ;
struct TYPE_5__ {TYPE_1__ common; } ;
typedef TYPE_2__ RpcPktHdr ;


 void* HIBYTE (int ) ;
 int HIWORD (int ) ;
 void* LOBYTE (int ) ;
 int LOWORD (int ) ;
 int RPC_VER_MAJOR ;
 int RPC_VER_MINOR ;

__attribute__((used)) static VOID RPCRT4_BuildCommonHeader(RpcPktHdr *Header, unsigned char PacketType,
                                     ULONG DataRepresentation)
{
  Header->common.rpc_ver = RPC_VER_MAJOR;
  Header->common.rpc_ver_minor = RPC_VER_MINOR;
  Header->common.ptype = PacketType;
  Header->common.drep[0] = LOBYTE(LOWORD(DataRepresentation));
  Header->common.drep[1] = HIBYTE(LOWORD(DataRepresentation));
  Header->common.drep[2] = LOBYTE(HIWORD(DataRepresentation));
  Header->common.drep[3] = HIBYTE(HIWORD(DataRepresentation));
  Header->common.auth_len = 0;
  Header->common.call_id = 1;
  Header->common.flags = 0;

}
