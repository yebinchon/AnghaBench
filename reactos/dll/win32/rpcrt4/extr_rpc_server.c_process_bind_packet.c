
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int RpcPktHdr ;
typedef int RpcPktBindHdr ;
typedef int RpcConnection ;
typedef scalar_t__ RPC_STATUS ;
typedef int RPC_MESSAGE ;


 scalar_t__ ERROR_OUTOFMEMORY ;
 int RPCRT4_FreeHeader (int *) ;
 scalar_t__ RPCRT4_SendWithAuth (int *,int *,int *,int ,unsigned char*,int ) ;
 scalar_t__ RPC_S_OK ;
 int * handle_bind_error (int *,scalar_t__) ;
 scalar_t__ process_bind_packet_no_send (int *,int *,int *,unsigned char*,int ,int **,unsigned char**,int *) ;

__attribute__((used)) static RPC_STATUS process_bind_packet(RpcConnection *conn, RpcPktBindHdr *hdr,
                                      RPC_MESSAGE *msg,
                                      unsigned char *auth_data,
                                      ULONG auth_length)
{
    RPC_STATUS status;
    RpcPktHdr *response = ((void*)0);
    unsigned char *auth_data_out = ((void*)0);
    ULONG auth_length_out = 0;

    status = process_bind_packet_no_send(conn, hdr, msg, auth_data, auth_length,
                                         &response, &auth_data_out,
                                         &auth_length_out);
    if (status != RPC_S_OK)
        response = handle_bind_error(conn, status);
    if (response)
        status = RPCRT4_SendWithAuth(conn, response, ((void*)0), 0, auth_data_out, auth_length_out);
    else
        status = ERROR_OUTOFMEMORY;
    RPCRT4_FreeHeader(response);

    return status;
}
