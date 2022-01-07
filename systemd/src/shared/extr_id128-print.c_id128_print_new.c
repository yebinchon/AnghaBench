
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;


 int id128_pretty_print (int ,int) ;
 int log_error_errno (int,char*) ;
 int sd_id128_randomize (int *) ;

int id128_print_new(bool pretty) {
        sd_id128_t id;
        int r;

        r = sd_id128_randomize(&id);
        if (r < 0)
                return log_error_errno(r, "Failed to generate ID: %m");

        return id128_pretty_print(id, pretty);
}
