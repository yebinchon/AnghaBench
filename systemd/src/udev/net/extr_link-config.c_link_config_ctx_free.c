
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rtnl; int ethtool_fd; } ;
typedef TYPE_1__ link_config_ctx ;


 int free (TYPE_1__*) ;
 int link_configs_free (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_netlink_unref (int ) ;

void link_config_ctx_free(link_config_ctx *ctx) {
        if (!ctx)
                return;

        safe_close(ctx->ethtool_fd);

        sd_netlink_unref(ctx->rtnl);

        link_configs_free(ctx);

        free(ctx);

        return;
}
