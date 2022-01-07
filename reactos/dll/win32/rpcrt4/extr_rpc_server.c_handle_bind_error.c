
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RpcPktHdr ;
typedef int RpcConnection ;
typedef int RPC_STATUS ;




 int FIXME (char*,int) ;
 int NDR_LOCAL_DATA_REPRESENTATION ;
 unsigned int REJECT_INVALID_CHECKSUM ;
 unsigned int REJECT_LOCAL_LIMIT_EXCEEDED ;
 unsigned int REJECT_PROTOCOL_VERSION_NOT_SUPPORTED ;
 unsigned int REJECT_REASON_NOT_SPECIFIED ;
 unsigned int REJECT_TEMPORARY_CONGESTION ;
 unsigned int REJECT_UNKNOWN_AUTHN_SERVICE ;
 int * RPCRT4_BuildBindNackHeader (int ,int ,int ,unsigned int) ;





 int RPC_VER_MAJOR ;
 int RPC_VER_MINOR ;

__attribute__((used)) static RpcPktHdr *handle_bind_error(RpcConnection *conn, RPC_STATUS error)
{
    unsigned int reject_reason;
    switch (error)
    {
    case 129:
        reject_reason = REJECT_TEMPORARY_CONGESTION;
        break;
    case 133:
    case 131:
        reject_reason = REJECT_LOCAL_LIMIT_EXCEEDED;
        break;
    case 130:
        reject_reason = REJECT_PROTOCOL_VERSION_NOT_SUPPORTED;
        break;
    case 128:
        reject_reason = REJECT_UNKNOWN_AUTHN_SERVICE;
        break;
    case 134:
        reject_reason = REJECT_INVALID_CHECKSUM;
        break;
    default:
        FIXME("unexpected status value %d\n", error);

    case 132:
        reject_reason = REJECT_REASON_NOT_SPECIFIED;
        break;
    }
    return RPCRT4_BuildBindNackHeader(NDR_LOCAL_DATA_REPRESENTATION,
                                      RPC_VER_MAJOR, RPC_VER_MINOR,
                                      reject_reason);
}
