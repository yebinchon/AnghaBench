
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int arg_app ;
 int arg_pretty ;
 int id128_pretty_print (int ,int ) ;
 int log_error_errno (int,char*) ;
 int sd_id128_get_invocation (int *) ;
 int sd_id128_is_null (int ) ;

__attribute__((used)) static int verb_invocation_id(int argc, char **argv, void *userdata) {
        sd_id128_t id;
        int r;

        if (!sd_id128_is_null(arg_app))
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Verb \"invocation-id\" cannot be combined with --app-specific=.");

        r = sd_id128_get_invocation(&id);
        if (r < 0)
                return log_error_errno(r, "Failed to get invocation-ID: %m");

        return id128_pretty_print(id, arg_pretty);
}
