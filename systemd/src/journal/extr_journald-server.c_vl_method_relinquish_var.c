
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VarlinkMethodFlags ;
typedef int Varlink ;
typedef int Server ;
typedef int JsonVariant ;


 int assert (int *) ;
 scalar_t__ json_variant_elements (int *) ;
 int log_info (char*) ;
 int server_relinquish_var (int *) ;
 int varlink_error_invalid_parameter (int *,int *) ;
 int varlink_reply (int *,int *) ;

__attribute__((used)) static int vl_method_relinquish_var(Varlink *link, JsonVariant *parameters, VarlinkMethodFlags flags, void *userdata) {
        Server *s = userdata;

        assert(link);
        assert(s);

        if (json_variant_elements(parameters) > 0)
                return varlink_error_invalid_parameter(link, parameters);

        log_info("Received client request to relinquish /var access.");
        server_relinquish_var(s);

        return varlink_reply(link, ((void*)0));
}
