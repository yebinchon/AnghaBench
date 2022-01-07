
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rpc_ver; scalar_t__ rpc_ver_minor; scalar_t__ frag_len; } ;
typedef int RpcPktHdr ;
typedef TYPE_1__ RpcPktCommonHdr ;
typedef int RPC_STATUS ;
typedef scalar_t__ DWORD ;


 scalar_t__ RPCRT4_GetHeaderSize (int const*) ;
 int RPC_S_OK ;
 int RPC_S_PROTOCOL_ERROR ;
 scalar_t__ RPC_VER_MAJOR ;
 scalar_t__ RPC_VER_MINOR ;
 int WARN (char*,...) ;

RPC_STATUS RPCRT4_ValidateCommonHeader(const RpcPktCommonHdr *hdr)
{
  DWORD hdr_length;


  if (hdr->rpc_ver != RPC_VER_MAJOR ||
      hdr->rpc_ver_minor != RPC_VER_MINOR)
  {
    WARN("unhandled packet version\n");
    return RPC_S_PROTOCOL_ERROR;
  }

  hdr_length = RPCRT4_GetHeaderSize((const RpcPktHdr*)hdr);
  if (hdr_length == 0)
  {
    WARN("header length == 0\n");
    return RPC_S_PROTOCOL_ERROR;
  }

  if (hdr->frag_len < hdr_length)
  {
    WARN("bad frag length %d\n", hdr->frag_len);
    return RPC_S_PROTOCOL_ERROR;
  }

  return RPC_S_OK;
}
