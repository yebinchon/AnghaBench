
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* ntp_fqdn; int ntp; void* domains; int dns; int pd; int ia; int serverid; } ;
typedef TYPE_1__ sd_dhcp6_lease ;


 int assert (TYPE_1__*) ;
 int dhcp6_lease_free_ia (int *) ;
 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 void* strv_free (void*) ;

__attribute__((used)) static sd_dhcp6_lease *dhcp6_lease_free(sd_dhcp6_lease *lease) {
        assert(lease);

        free(lease->serverid);
        dhcp6_lease_free_ia(&lease->ia);
        dhcp6_lease_free_ia(&lease->pd);

        free(lease->dns);

        lease->domains = strv_free(lease->domains);

        free(lease->ntp);

        lease->ntp_fqdn = strv_free(lease->ntp_fqdn);
        return mfree(lease);
}
