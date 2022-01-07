
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Manager ;


 int assert (int *) ;
 int manager_reset_server_features (int *) ;
 int sd_bus_reply_method_return (int *,int *) ;

__attribute__((used)) static int bus_method_reset_server_features(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;

        assert(message);
        assert(m);

        manager_reset_server_features(m);

        return sd_bus_reply_method_return(message, ((void*)0));
}
