
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* manager; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_12__ {int polkit_registry; } ;
typedef TYPE_2__ Link ;
typedef scalar_t__ DnsOverTlsMode ;


 int CAP_NET_ADMIN ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int UID_INVALID ;
 scalar_t__ _DNS_OVER_TLS_MODE_INVALID ;
 int assert (TYPE_2__*) ;
 int bus_verify_polkit_async (TYPE_2__*,int ,char*,int *,int,int ,int *,int *) ;
 scalar_t__ dns_over_tls_mode_from_string (char const*) ;
 scalar_t__ isempty (char const*) ;
 int link_save_user (TYPE_2__*) ;
 int link_set_dns_over_tls_mode (TYPE_2__*,scalar_t__) ;
 int sd_bus_error_setf (int *,int ,char*,char const*) ;
 int sd_bus_message_read (TYPE_2__*,char*,char const**) ;
 int sd_bus_reply_method_return (TYPE_2__*,int *) ;
 int verify_unmanaged_link (TYPE_2__*,int *) ;

int bus_link_method_set_dns_over_tls(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        const char *dns_over_tls;
        DnsOverTlsMode mode;
        int r;

        assert(message);
        assert(l);

        r = verify_unmanaged_link(l, error);
        if (r < 0)
                return r;

        r = sd_bus_message_read(message, "s", &dns_over_tls);
        if (r < 0)
                return r;

        if (isempty(dns_over_tls))
                mode = _DNS_OVER_TLS_MODE_INVALID;
        else {
                mode = dns_over_tls_mode_from_string(dns_over_tls);
                if (mode < 0)
                        return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid DNSOverTLS setting: %s", dns_over_tls);
        }

        r = bus_verify_polkit_async(message, CAP_NET_ADMIN,
                                    "org.freedesktop.resolve1.set-dns-over-tls",
                                    ((void*)0), 1, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        link_set_dns_over_tls_mode(l, mode);

        (void) link_save_user(l);

        return sd_bus_reply_method_return(message, ((void*)0));
}
