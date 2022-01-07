
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;


 int arg_app ;
 int arg_pretty ;
 int id128_pretty_print (int ,int ) ;
 int log_error_errno (int,char*,char*) ;
 int sd_id128_get_boot (int *) ;
 int sd_id128_get_boot_app_specific (int ,int *) ;
 scalar_t__ sd_id128_is_null (int ) ;

__attribute__((used)) static int verb_boot_id(int argc, char **argv, void *userdata) {
        sd_id128_t id;
        int r;

        if (sd_id128_is_null(arg_app))
                r = sd_id128_get_boot(&id);
        else
                r = sd_id128_get_boot_app_specific(arg_app, &id);
        if (r < 0)
                return log_error_errno(r, "Failed to get %sboot-ID: %m",
                                       sd_id128_is_null(arg_app) ? "" : "app-specific ");

        return id128_pretty_print(id, arg_pretty);
}
