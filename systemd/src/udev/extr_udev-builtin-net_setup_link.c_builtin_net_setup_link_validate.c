
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctx ;
 int link_config_should_reload (int ) ;
 int log_debug (char*) ;

__attribute__((used)) static bool builtin_net_setup_link_validate(void) {
        log_debug("Check if link configuration needs reloading.");
        if (!ctx)
                return 0;

        return link_config_should_reload(ctx);
}
