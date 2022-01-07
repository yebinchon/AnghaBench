
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct sd_dhcp_raw_option {struct sd_dhcp_raw_option* data; } ;
struct TYPE_7__ {int search_domains; struct sd_dhcp_raw_option* vendor_specific; struct sd_dhcp_raw_option* client_id; struct sd_dhcp_raw_option* static_route; struct sd_dhcp_raw_option* sip; struct sd_dhcp_raw_option* ntp; struct sd_dhcp_raw_option* dns; struct sd_dhcp_raw_option* domainname; struct sd_dhcp_raw_option* hostname; struct sd_dhcp_raw_option* timezone; struct sd_dhcp_raw_option* router; struct sd_dhcp_raw_option* root_path; struct sd_dhcp_raw_option* private_options; } ;
typedef TYPE_1__ sd_dhcp_lease ;


 int LIST_REMOVE (int ,struct sd_dhcp_raw_option*,struct sd_dhcp_raw_option*) ;
 int assert (TYPE_1__*) ;
 int free (struct sd_dhcp_raw_option*) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int options ;
 int strv_free (int ) ;

__attribute__((used)) static sd_dhcp_lease *dhcp_lease_free(sd_dhcp_lease *lease) {
        assert(lease);

        while (lease->private_options) {
                struct sd_dhcp_raw_option *option = lease->private_options;

                LIST_REMOVE(options, lease->private_options, option);

                free(option->data);
                free(option);
        }

        free(lease->root_path);
        free(lease->router);
        free(lease->timezone);
        free(lease->hostname);
        free(lease->domainname);
        free(lease->dns);
        free(lease->ntp);
        free(lease->sip);
        free(lease->static_route);
        free(lease->client_id);
        free(lease->vendor_specific);
        strv_free(lease->search_domains);
        return mfree(lease);
}
