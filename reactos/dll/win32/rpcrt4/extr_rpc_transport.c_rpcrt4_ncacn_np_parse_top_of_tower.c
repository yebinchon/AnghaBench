
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count_lhs; scalar_t__ protid; size_t count_rhs; } ;
typedef TYPE_1__ twr_empty_floor_t ;
typedef int RPC_STATUS ;


 scalar_t__ EPM_PROTOCOL_NETBIOS ;
 scalar_t__ EPM_PROTOCOL_SMB ;
 int EPT_S_NOT_REGISTERED ;
 char* I_RpcAllocate (int) ;
 int I_RpcFree (char*) ;
 int RPC_S_OK ;
 int RPC_S_OUT_OF_RESOURCES ;
 int TRACE (char*,unsigned char const*,int,char**,char**) ;
 int memcpy (char*,unsigned char const*,int) ;

__attribute__((used)) static RPC_STATUS rpcrt4_ncacn_np_parse_top_of_tower(const unsigned char *tower_data,
                                                     size_t tower_size,
                                                     char **networkaddr,
                                                     char **endpoint)
{
    const twr_empty_floor_t *smb_floor = (const twr_empty_floor_t *)tower_data;
    const twr_empty_floor_t *nb_floor;

    TRACE("(%p, %d, %p, %p)\n", tower_data, (int)tower_size, networkaddr, endpoint);

    if (tower_size < sizeof(*smb_floor))
        return EPT_S_NOT_REGISTERED;

    tower_data += sizeof(*smb_floor);
    tower_size -= sizeof(*smb_floor);

    if ((smb_floor->count_lhs != sizeof(smb_floor->protid)) ||
        (smb_floor->protid != EPM_PROTOCOL_SMB) ||
        (smb_floor->count_rhs > tower_size) ||
        (tower_data[smb_floor->count_rhs - 1] != '\0'))
        return EPT_S_NOT_REGISTERED;

    if (endpoint)
    {
        *endpoint = I_RpcAllocate(smb_floor->count_rhs);
        if (!*endpoint)
            return RPC_S_OUT_OF_RESOURCES;
        memcpy(*endpoint, tower_data, smb_floor->count_rhs);
    }
    tower_data += smb_floor->count_rhs;
    tower_size -= smb_floor->count_rhs;

    if (tower_size < sizeof(*nb_floor))
        return EPT_S_NOT_REGISTERED;

    nb_floor = (const twr_empty_floor_t *)tower_data;

    tower_data += sizeof(*nb_floor);
    tower_size -= sizeof(*nb_floor);

    if ((nb_floor->count_lhs != sizeof(nb_floor->protid)) ||
        (nb_floor->protid != EPM_PROTOCOL_NETBIOS) ||
        (nb_floor->count_rhs > tower_size) ||
        (tower_data[nb_floor->count_rhs - 1] != '\0'))
        return EPT_S_NOT_REGISTERED;

    if (networkaddr)
    {
        *networkaddr = I_RpcAllocate(nb_floor->count_rhs);
        if (!*networkaddr)
        {
            if (endpoint)
            {
                I_RpcFree(*endpoint);
                *endpoint = ((void*)0);
            }
            return RPC_S_OUT_OF_RESOURCES;
        }
        memcpy(*networkaddr, tower_data, nb_floor->count_rhs);
    }

    return RPC_S_OK;
}
