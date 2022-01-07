
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_device ;
struct TYPE_3__ {int ethtool_fd; } ;
typedef TYPE_1__ link_config_ctx ;


 int ethtool_get_driver (int *,char const*,char**) ;
 int sd_device_get_sysname (int *,char const**) ;

int link_get_driver(link_config_ctx *ctx, sd_device *device, char **ret) {
        const char *name;
        char *driver = ((void*)0);
        int r;

        r = sd_device_get_sysname(device, &name);
        if (r < 0)
                return r;

        r = ethtool_get_driver(&ctx->ethtool_fd, name, &driver);
        if (r < 0)
                return r;

        *ret = driver;
        return 0;
}
