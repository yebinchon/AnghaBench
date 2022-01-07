
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPM_PROTOCOL_TCP ;
 size_t rpcrt4_ip_tcp_get_top_of_tower (unsigned char*,char const*,int ,char const*) ;

__attribute__((used)) static size_t rpcrt4_ncacn_ip_tcp_get_top_of_tower(unsigned char *tower_data,
                                                   const char *networkaddr,
                                                   const char *endpoint)
{
    return rpcrt4_ip_tcp_get_top_of_tower(tower_data, networkaddr,
                                          EPM_PROTOCOL_TCP, endpoint);
}
