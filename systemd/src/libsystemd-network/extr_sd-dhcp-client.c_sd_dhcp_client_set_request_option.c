
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t req_opts_size; int* req_opts; int req_opts_allocated; int state; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int DHCP_STATE_INIT ;
 int DHCP_STATE_STOPPED ;
 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GREEDY_REALLOC (int*,int ,int) ;
 TYPE_1__* IN_SET (int ,int ,int ) ;





 int assert_return (TYPE_1__*,int) ;

int sd_dhcp_client_set_request_option(sd_dhcp_client *client, uint8_t option) {
        size_t i;

        assert_return(client, -EINVAL);
        assert_return(IN_SET(client->state, DHCP_STATE_INIT, DHCP_STATE_STOPPED), -EBUSY);

        switch(option) {

        case 129:
        case 130:
        case 131:
        case 128:
        case 132:
                return -EINVAL;

        default:
                break;
        }

        for (i = 0; i < client->req_opts_size; i++)
                if (client->req_opts[i] == option)
                        return -EEXIST;

        if (!GREEDY_REALLOC(client->req_opts, client->req_opts_allocated,
                            client->req_opts_size + 1))
                return -ENOMEM;

        client->req_opts[client->req_opts_size++] = option;

        return 0;
}
