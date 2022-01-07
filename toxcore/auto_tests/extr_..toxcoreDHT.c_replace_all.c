
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_12__ {scalar_t__ port; int ip; } ;
struct TYPE_11__ {scalar_t__ family; } ;
struct TYPE_13__ {TYPE_1__ ip; } ;
struct TYPE_14__ {scalar_t__ ret_timestamp; TYPE_2__ ret_ip_port; int timestamp; TYPE_3__ ip_port; } ;
struct TYPE_15__ {int public_key; TYPE_4__ assoc4; TYPE_4__ assoc6; } ;
typedef TYPE_3__ IP_Port ;
typedef TYPE_4__ IPPTsPng ;
typedef TYPE_5__ Client_data ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int id_copy (int ,int const*) ;
 int ip_reset (int *) ;
 int memset (TYPE_4__*,int ,int) ;
 int sort_client_list (TYPE_5__*,int ,int const*) ;
 scalar_t__ store_node_ok (TYPE_5__*,int const*,int const*) ;
 int unix_time () ;

__attribute__((used)) static int replace_all( Client_data *list,
                          uint16_t length,
                          const uint8_t *public_key,
                          IP_Port ip_port,
                          const uint8_t *comp_public_key )
{
    if ((ip_port.ip.family != AF_INET) && (ip_port.ip.family != AF_INET6))
        return 0;

    if (store_node_ok(&list[1], public_key, comp_public_key) || store_node_ok(&list[0], public_key, comp_public_key)) {
        sort_client_list(list, length, comp_public_key);

        IPPTsPng *ipptp_write = ((void*)0);
        IPPTsPng *ipptp_clear = ((void*)0);

        Client_data *client = &list[0];

        if (ip_port.ip.family == AF_INET) {
            ipptp_write = &client->assoc4;
            ipptp_clear = &client->assoc6;
        } else {
            ipptp_write = &client->assoc6;
            ipptp_clear = &client->assoc4;
        }

        id_copy(client->public_key, public_key);
        ipptp_write->ip_port = ip_port;
        ipptp_write->timestamp = unix_time();

        ip_reset(&ipptp_write->ret_ip_port.ip);
        ipptp_write->ret_ip_port.port = 0;
        ipptp_write->ret_timestamp = 0;


        memset(ipptp_clear, 0, sizeof(*ipptp_clear));

        return 1;
    }

    return 0;
}
