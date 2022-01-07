
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ctx ;
 int link_config_ctx_free (int *) ;
 int log_debug (char*) ;

__attribute__((used)) static void builtin_net_setup_link_exit(void) {
        link_config_ctx_free(ctx);
        ctx = ((void*)0);
        log_debug("Unloaded link configuration context.");
}
