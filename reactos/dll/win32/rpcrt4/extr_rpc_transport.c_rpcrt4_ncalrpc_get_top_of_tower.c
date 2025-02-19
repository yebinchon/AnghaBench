
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count_lhs; size_t count_rhs; int protid; } ;
typedef TYPE_1__ twr_empty_floor_t ;


 int EPM_PROTOCOL_PIPE ;
 int TRACE (char*,unsigned char*,char const*,char const*) ;
 int memcpy (unsigned char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static size_t rpcrt4_ncalrpc_get_top_of_tower(unsigned char *tower_data,
                                              const char *networkaddr,
                                              const char *endpoint)
{
    twr_empty_floor_t *pipe_floor;
    size_t size;
    size_t endpoint_size;

    TRACE("(%p, %s, %s)\n", tower_data, networkaddr, endpoint);

    endpoint_size = strlen(endpoint) + 1;
    size = sizeof(*pipe_floor) + endpoint_size;

    if (!tower_data)
        return size;

    pipe_floor = (twr_empty_floor_t *)tower_data;

    tower_data += sizeof(*pipe_floor);

    pipe_floor->count_lhs = sizeof(pipe_floor->protid);
    pipe_floor->protid = EPM_PROTOCOL_PIPE;
    pipe_floor->count_rhs = endpoint_size;

    memcpy(tower_data, endpoint, endpoint_size);

    return size;
}
