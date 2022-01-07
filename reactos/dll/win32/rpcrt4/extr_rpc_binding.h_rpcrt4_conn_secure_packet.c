
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum secure_packet_direction { ____Placeholder_secure_packet_direction } secure_packet_direction ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* secure_packet ) (TYPE_2__*,int,int *,unsigned int,unsigned char*,unsigned int,int *,unsigned char*,unsigned int) ;} ;
typedef int RpcPktHdr ;
typedef TYPE_2__ RpcConnection ;
typedef int RpcAuthVerifier ;
typedef int RPC_STATUS ;


 int stub1 (TYPE_2__*,int,int *,unsigned int,unsigned char*,unsigned int,int *,unsigned char*,unsigned int) ;

__attribute__((used)) static inline RPC_STATUS rpcrt4_conn_secure_packet(
    RpcConnection *conn, enum secure_packet_direction dir,
    RpcPktHdr *hdr, unsigned int hdr_size, unsigned char *stub_data,
    unsigned int stub_data_size, RpcAuthVerifier *auth_hdr,
    unsigned char *auth_value, unsigned int auth_value_size)
{
    return conn->ops->secure_packet(conn, dir, hdr, hdr_size, stub_data, stub_data_size, auth_hdr, auth_value, auth_value_size);
}
