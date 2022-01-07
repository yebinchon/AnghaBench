
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Manager ;


 int assert (int *) ;
 int bus_dnssd_method_unregister ;
 int call_dnssd_method (int *,int *,int ,int *) ;

__attribute__((used)) static int bus_method_unregister_service(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;

        assert(message);
        assert(m);

        return call_dnssd_method(m, message, bus_dnssd_method_unregister, error);
}
