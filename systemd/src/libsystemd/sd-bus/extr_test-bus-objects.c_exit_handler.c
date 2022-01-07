
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int quit; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int assert_se (int) ;
 int log_info (char*) ;
 int sd_bus_reply_method_return (int *,char*) ;

__attribute__((used)) static int exit_handler(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        struct context *c = userdata;
        int r;

        c->quit = 1;

        log_info("Exit called");

        r = sd_bus_reply_method_return(m, "");
        assert_se(r >= 0);

        return 1;
}
