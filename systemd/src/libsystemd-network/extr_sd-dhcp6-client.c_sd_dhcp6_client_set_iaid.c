
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {void* id; } ;
struct TYPE_12__ {TYPE_3__ ia_pd; } ;
struct TYPE_9__ {void* id; } ;
struct TYPE_10__ {TYPE_1__ ia_na; } ;
struct TYPE_13__ {int iaid_set; TYPE_4__ ia_pd; TYPE_2__ ia_na; int state; } ;
typedef TYPE_5__ sd_dhcp6_client ;


 int DHCP6_STATE_STOPPED ;
 int EBUSY ;
 int EINVAL ;
 TYPE_5__* IN_SET (int ,int ) ;
 int assert_return (TYPE_5__*,int ) ;
 void* htobe32 (int ) ;

int sd_dhcp6_client_set_iaid(sd_dhcp6_client *client, uint32_t iaid) {
        assert_return(client, -EINVAL);
        assert_return(IN_SET(client->state, DHCP6_STATE_STOPPED), -EBUSY);

        client->ia_na.ia_na.id = htobe32(iaid);
        client->ia_pd.ia_pd.id = htobe32(iaid);
        client->iaid_set = 1;

        return 0;
}
