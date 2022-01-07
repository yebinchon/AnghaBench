
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
typedef int TimeStamp ;
struct TYPE_7__ {unsigned int auth_type; int auth_context_id; int auth_level; } ;
struct TYPE_6__ {int * AuthInfo; int auth_context_id; int ctx; } ;
typedef TYPE_1__ RpcConnection ;
typedef TYPE_2__ RpcAuthVerifier ;
typedef scalar_t__ RPC_STATUS ;
typedef int CredHandle ;
typedef scalar_t__ BOOL ;


 int DeleteSecurityContext (int *) ;
 int ERR (char*,unsigned int) ;
 int FreeCredentialsHandle (int *) ;
 int GetProcessHeap () ;
 unsigned char* HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,unsigned char*) ;
 scalar_t__ RPCRT4_ServerGetRegisteredAuthInfo (unsigned int,int *,int *,int*) ;
 scalar_t__ RPC_S_OK ;
 scalar_t__ RPC_S_OUT_OF_RESOURCES ;
 scalar_t__ RPC_S_PROTOCOL_ERROR ;
 scalar_t__ RPC_S_SEC_PKG_ERROR ;
 scalar_t__ RpcAuthInfo_Create (int ,unsigned int,int ,int ,int,int *,int **) ;
 int RpcAuthInfo_Release (int *) ;
 int SecInvalidateHandle (int *) ;
 scalar_t__ SecIsValidHandle (int *) ;
 scalar_t__ rpcrt4_conn_authorize (TYPE_1__*,scalar_t__,unsigned char*,int,unsigned char*,unsigned int*) ;

RPC_STATUS RPCRT4_ServerConnectionAuth(RpcConnection* conn,
                                       BOOL start,
                                       RpcAuthVerifier *auth_data_in,
                                       ULONG auth_length_in,
                                       unsigned char **auth_data_out,
                                       ULONG *auth_length_out)
{
    unsigned char *out_buffer;
    unsigned int out_size;
    RPC_STATUS status;

    if (start)
    {

        if (conn->AuthInfo)
        {
            RpcAuthInfo_Release(conn->AuthInfo);
            conn->AuthInfo = ((void*)0);
        }
        if (SecIsValidHandle(&conn->ctx))
        {
            DeleteSecurityContext(&conn->ctx);
            SecInvalidateHandle(&conn->ctx);
        }
        if (auth_length_in >= sizeof(RpcAuthVerifier))
        {
            CredHandle cred;
            TimeStamp exp;
            ULONG max_token;

            status = RPCRT4_ServerGetRegisteredAuthInfo(
                auth_data_in->auth_type, &cred, &exp, &max_token);
            if (status != RPC_S_OK)
            {
                ERR("unknown authentication service %u\n", auth_data_in->auth_type);
                return status;
            }

            status = RpcAuthInfo_Create(auth_data_in->auth_level,
                                        auth_data_in->auth_type, cred, exp,
                                        max_token, ((void*)0), &conn->AuthInfo);
            if (status != RPC_S_OK)
            {
                FreeCredentialsHandle(&cred);
                return status;
            }


            conn->auth_context_id = auth_data_in->auth_context_id;
        }
    }

    if (auth_length_in < sizeof(RpcAuthVerifier))
        return RPC_S_OK;

    if (!conn->AuthInfo)

        return RPC_S_PROTOCOL_ERROR;

    status = rpcrt4_conn_authorize(
        conn, start, (unsigned char *)(auth_data_in + 1),
        auth_length_in - sizeof(RpcAuthVerifier), ((void*)0), &out_size);
    if (status) return status;

    out_buffer = HeapAlloc(GetProcessHeap(), 0, out_size);
    if (!out_buffer) return RPC_S_OUT_OF_RESOURCES;

    status = rpcrt4_conn_authorize(
        conn, start, (unsigned char *)(auth_data_in + 1),
        auth_length_in - sizeof(RpcAuthVerifier), out_buffer, &out_size);
    if (status != RPC_S_OK)
    {
        HeapFree(GetProcessHeap(), 0, out_buffer);
        return status;
    }

    if (out_size && !auth_length_out)
    {
        ERR("expected authentication to be complete but SSP returned data of "
            "%u bytes to be sent back to client\n", out_size);
        HeapFree(GetProcessHeap(), 0, out_buffer);
        return RPC_S_SEC_PKG_ERROR;
    }
    else
    {
        *auth_data_out = out_buffer;
        *auth_length_out = out_size;
    }

    return status;
}
