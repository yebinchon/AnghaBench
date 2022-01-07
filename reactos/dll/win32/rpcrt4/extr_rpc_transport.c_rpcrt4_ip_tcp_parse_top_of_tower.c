
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count_lhs; unsigned char protid; int count_rhs; int port; } ;
typedef TYPE_1__ twr_tcp_floor_t ;
struct TYPE_4__ {int count_lhs; scalar_t__ protid; int count_rhs; int ipv4addr; } ;
typedef TYPE_2__ twr_ipv4_floor_t ;
struct in_addr {int s_addr; } ;
typedef int RPC_STATUS ;


 int AF_INET ;
 scalar_t__ EPM_PROTOCOL_IP ;
 int EPT_S_NOT_REGISTERED ;
 int ERR (char*,int ) ;
 int INET_ADDRSTRLEN ;
 char* I_RpcAllocate (int) ;
 int I_RpcFree (char*) ;
 int RPC_S_OK ;
 int RPC_S_OUT_OF_RESOURCES ;
 int TRACE (char*,unsigned char const*,int,char**,char**) ;
 int WSAGetLastError () ;
 int inet_ntop (int ,struct in_addr*,char*,int) ;
 int ntohs (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static RPC_STATUS rpcrt4_ip_tcp_parse_top_of_tower(const unsigned char *tower_data,
                                                   size_t tower_size,
                                                   char **networkaddr,
                                                   unsigned char tcp_protid,
                                                   char **endpoint)
{
    const twr_tcp_floor_t *tcp_floor = (const twr_tcp_floor_t *)tower_data;
    const twr_ipv4_floor_t *ipv4_floor;
    struct in_addr in_addr;

    TRACE("(%p, %d, %p, %p)\n", tower_data, (int)tower_size, networkaddr, endpoint);

    if (tower_size < sizeof(*tcp_floor))
        return EPT_S_NOT_REGISTERED;

    tower_data += sizeof(*tcp_floor);
    tower_size -= sizeof(*tcp_floor);

    if (tower_size < sizeof(*ipv4_floor))
        return EPT_S_NOT_REGISTERED;

    ipv4_floor = (const twr_ipv4_floor_t *)tower_data;

    if ((tcp_floor->count_lhs != sizeof(tcp_floor->protid)) ||
        (tcp_floor->protid != tcp_protid) ||
        (tcp_floor->count_rhs != sizeof(tcp_floor->port)) ||
        (ipv4_floor->count_lhs != sizeof(ipv4_floor->protid)) ||
        (ipv4_floor->protid != EPM_PROTOCOL_IP) ||
        (ipv4_floor->count_rhs != sizeof(ipv4_floor->ipv4addr)))
        return EPT_S_NOT_REGISTERED;

    if (endpoint)
    {
        *endpoint = I_RpcAllocate(6 );
        if (!*endpoint)
            return RPC_S_OUT_OF_RESOURCES;
        sprintf(*endpoint, "%u", ntohs(tcp_floor->port));
    }

    if (networkaddr)
    {
        *networkaddr = I_RpcAllocate(INET_ADDRSTRLEN);
        if (!*networkaddr)
        {
            if (endpoint)
            {
                I_RpcFree(*endpoint);
                *endpoint = ((void*)0);
            }
            return RPC_S_OUT_OF_RESOURCES;
        }
        in_addr.s_addr = ipv4_floor->ipv4addr;
        if (!inet_ntop(AF_INET, &in_addr, *networkaddr, INET_ADDRSTRLEN))
        {
            ERR("inet_ntop: %u\n", WSAGetLastError());
            I_RpcFree(*networkaddr);
            *networkaddr = ((void*)0);
            if (endpoint)
            {
                I_RpcFree(*endpoint);
                *endpoint = ((void*)0);
            }
            return EPT_S_NOT_REGISTERED;
        }
    }

    return RPC_S_OK;
}
