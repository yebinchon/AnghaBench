
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_track ;
typedef int DnssdService ;


 int assert (int *) ;
 int dnssd_service_free (int *) ;
 int log_debug (char*) ;

__attribute__((used)) static int on_bus_track(sd_bus_track *t, void *userdata) {
        DnssdService *s = userdata;

        assert(t);
        assert(s);

        log_debug("Client of active request vanished, destroying DNS-SD service.");
        dnssd_service_free(s);

        return 0;
}
