
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_9__ {scalar_t__ BufferLength; } ;
struct TYPE_7__ {int SyntaxGUID; } ;
struct TYPE_8__ {TYPE_1__ ActiveInterface; } ;
typedef int RpcPktCommonHdr ;
typedef TYPE_2__ RpcConnection ;
typedef int RpcAuthVerifier ;
typedef int RPC_STATUS ;
typedef TYPE_3__ RPC_MESSAGE ;


 int FALSE ;
 int RPCRT4_ServerConnectionAuth (TYPE_2__*,int ,int *,int ,int *,int *) ;
 int RPC_S_OK ;
 int RPC_S_PROTOCOL_ERROR ;
 scalar_t__ UuidIsNil (int *,int *) ;

__attribute__((used)) static RPC_STATUS process_auth3_packet(RpcConnection *conn,
                                       RpcPktCommonHdr *hdr,
                                       RPC_MESSAGE *msg,
                                       unsigned char *auth_data,
                                       ULONG auth_length)
{
    RPC_STATUS status;

    if (UuidIsNil(&conn->ActiveInterface.SyntaxGUID, &status) ||
        !auth_length || msg->BufferLength != 0)
        status = RPC_S_PROTOCOL_ERROR;
    else
    {
        status = RPCRT4_ServerConnectionAuth(conn, FALSE,
                                             (RpcAuthVerifier *)auth_data,
                                             auth_length, ((void*)0), ((void*)0));
    }





    return RPC_S_OK;
}
