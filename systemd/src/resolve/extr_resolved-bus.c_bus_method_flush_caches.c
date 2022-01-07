
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Manager ;


 int assert (int *) ;
 int manager_flush_caches (int *) ;
 int sd_bus_reply_method_return (int *,int *) ;

__attribute__((used)) static int bus_method_flush_caches(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;

        assert(message);
        assert(m);

        manager_flush_caches(m);

        return sd_bus_reply_method_return(message, ((void*)0));
}
