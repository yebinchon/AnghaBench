
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int claimed_address; int address; } ;
typedef TYPE_1__ sd_ipv4ll ;
typedef TYPE_1__ sd_ipv4acd ;


 int IPV4LL_DONT_DESTROY (TYPE_1__*) ;



 int SD_IPV4LL_EVENT_BIND ;
 int SD_IPV4LL_EVENT_CONFLICT ;
 int SD_IPV4LL_EVENT_STOP ;
 int assert (TYPE_1__*) ;
 int assert_not_reached (char*) ;
 int ipv4ll_client_notify (TYPE_1__*,int ) ;
 int sd_ipv4ll_restart (TYPE_1__*) ;

void ipv4ll_on_acd(sd_ipv4acd *acd, int event, void *userdata) {
        sd_ipv4ll *ll = userdata;
        IPV4LL_DONT_DESTROY(ll);
        int r;

        assert(acd);
        assert(ll);

        switch (event) {

        case 128:
                ipv4ll_client_notify(ll, SD_IPV4LL_EVENT_STOP);
                ll->claimed_address = 0;
                break;

        case 130:
                ll->claimed_address = ll->address;
                ipv4ll_client_notify(ll, SD_IPV4LL_EVENT_BIND);
                break;

        case 129:


                if (ll->claimed_address != 0) {
                        ipv4ll_client_notify(ll, SD_IPV4LL_EVENT_CONFLICT);

                        ll->claimed_address = 0;
                } else {
                        r = sd_ipv4ll_restart(ll);
                        if (r < 0)
                                goto error;
                }

                break;

        default:
                assert_not_reached("Invalid IPv4ACD event.");
        }

        return;

error:
        ipv4ll_client_notify(ll, SD_IPV4LL_EVENT_STOP);
}
