
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int lifetime_t2; int lifetime_t1; } ;
struct TYPE_11__ {TYPE_3__ ia_pd; scalar_t__ addresses; } ;
struct TYPE_8__ {int lifetime_t2; int lifetime_t1; } ;
struct TYPE_9__ {TYPE_1__ ia_na; scalar_t__ addresses; } ;
struct TYPE_12__ {TYPE_4__ pd; struct TYPE_12__* lease; int request; TYPE_2__ ia; } ;
typedef TYPE_5__ sd_dhcp6_client ;


 int DHCP6_REQUEST_IA_NA ;
 int DHCP6_REQUEST_IA_PD ;
 int EINVAL ;
 int ENOMSG ;
 scalar_t__ FLAGS_SET (int ,int ) ;
 int assert_return (TYPE_5__*,int ) ;
 int be32toh (int ) ;

__attribute__((used)) static int client_get_lifetime(sd_dhcp6_client *client, uint32_t *lifetime_t1,
                               uint32_t *lifetime_t2) {
        assert_return(client, -EINVAL);
        assert_return(client->lease, -EINVAL);

        if (FLAGS_SET(client->request, DHCP6_REQUEST_IA_NA) && client->lease->ia.addresses) {
                *lifetime_t1 = be32toh(client->lease->ia.ia_na.lifetime_t1);
                *lifetime_t2 = be32toh(client->lease->ia.ia_na.lifetime_t2);

                return 0;
        }

        if (FLAGS_SET(client->request, DHCP6_REQUEST_IA_PD) && client->lease->pd.addresses) {
                *lifetime_t1 = be32toh(client->lease->pd.ia_pd.lifetime_t1);
                *lifetime_t2 = be32toh(client->lease->pd.ia_pd.lifetime_t2);

                return 0;
        }

        return -ENOMSG;
}
