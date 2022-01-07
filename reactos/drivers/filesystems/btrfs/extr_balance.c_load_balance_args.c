
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint8_t ;
typedef void* uint16_t ;
struct TYPE_5__ {int flags; int convert; void* stripes_end; void* stripes_start; int limit_end; scalar_t__ limit_start; int vrange_end; int vrange_start; int drange_end; int drange_start; int devid; void* usage_end; void* usage_start; int profiles; } ;
typedef TYPE_1__ btrfs_balance_opts ;
struct TYPE_6__ {int flags; int convert; scalar_t__ stripes_end; scalar_t__ stripes_start; int limit_end; scalar_t__ limit_start; int limit; int vrange_end; int vrange_start; int drange_end; int drange_start; int devid; scalar_t__ usage_end; scalar_t__ usage_start; scalar_t__ usage; int profiles; } ;
typedef TYPE_2__ BALANCE_ARGS ;


 int BALANCE_ARGS_FLAGS_CONVERT ;
 int BALANCE_ARGS_FLAGS_DEVID ;
 int BALANCE_ARGS_FLAGS_DRANGE ;
 int BALANCE_ARGS_FLAGS_LIMIT ;
 int BALANCE_ARGS_FLAGS_LIMIT_RANGE ;
 int BALANCE_ARGS_FLAGS_PROFILES ;
 int BALANCE_ARGS_FLAGS_SOFT ;
 int BALANCE_ARGS_FLAGS_STRIPES_RANGE ;
 int BALANCE_ARGS_FLAGS_USAGE ;
 int BALANCE_ARGS_FLAGS_USAGE_RANGE ;
 int BALANCE_ARGS_FLAGS_VRANGE ;
 int BTRFS_BALANCE_OPTS_CONVERT ;
 int BTRFS_BALANCE_OPTS_DEVID ;
 int BTRFS_BALANCE_OPTS_DRANGE ;
 int BTRFS_BALANCE_OPTS_ENABLED ;
 int BTRFS_BALANCE_OPTS_LIMIT ;
 int BTRFS_BALANCE_OPTS_PROFILES ;
 int BTRFS_BALANCE_OPTS_SOFT ;
 int BTRFS_BALANCE_OPTS_STRIPES ;
 int BTRFS_BALANCE_OPTS_USAGE ;
 int BTRFS_BALANCE_OPTS_VRANGE ;

__attribute__((used)) static void load_balance_args(btrfs_balance_opts* opts, BALANCE_ARGS* args) {
    opts->flags = BTRFS_BALANCE_OPTS_ENABLED;

    if (args->flags & BALANCE_ARGS_FLAGS_PROFILES) {
        opts->flags |= BTRFS_BALANCE_OPTS_PROFILES;
        opts->profiles = args->profiles;
    }

    if (args->flags & BALANCE_ARGS_FLAGS_USAGE) {
        opts->flags |= BTRFS_BALANCE_OPTS_USAGE;

        opts->usage_start = 0;
        opts->usage_end = (uint8_t)args->usage;
    } else if (args->flags & BALANCE_ARGS_FLAGS_USAGE_RANGE) {
        opts->flags |= BTRFS_BALANCE_OPTS_USAGE;

        opts->usage_start = (uint8_t)args->usage_start;
        opts->usage_end = (uint8_t)args->usage_end;
    }

    if (args->flags & BALANCE_ARGS_FLAGS_DEVID) {
        opts->flags |= BTRFS_BALANCE_OPTS_DEVID;
        opts->devid = args->devid;
    }

    if (args->flags & BALANCE_ARGS_FLAGS_DRANGE) {
        opts->flags |= BTRFS_BALANCE_OPTS_DRANGE;
        opts->drange_start = args->drange_start;
        opts->drange_end = args->drange_end;
    }

    if (args->flags & BALANCE_ARGS_FLAGS_VRANGE) {
        opts->flags |= BTRFS_BALANCE_OPTS_VRANGE;
        opts->vrange_start = args->vrange_start;
        opts->vrange_end = args->vrange_end;
    }

    if (args->flags & BALANCE_ARGS_FLAGS_LIMIT) {
        opts->flags |= BTRFS_BALANCE_OPTS_LIMIT;

        opts->limit_start = 0;
        opts->limit_end = args->limit;
    } else if (args->flags & BALANCE_ARGS_FLAGS_LIMIT_RANGE) {
        opts->flags |= BTRFS_BALANCE_OPTS_LIMIT;

        opts->limit_start = args->limit_start;
        opts->limit_end = args->limit_end;
    }

    if (args->flags & BALANCE_ARGS_FLAGS_STRIPES_RANGE) {
        opts->flags |= BTRFS_BALANCE_OPTS_STRIPES;

        opts->stripes_start = (uint16_t)args->stripes_start;
        opts->stripes_end = (uint16_t)args->stripes_end;
    }

    if (args->flags & BALANCE_ARGS_FLAGS_CONVERT) {
        opts->flags |= BTRFS_BALANCE_OPTS_CONVERT;
        opts->convert = args->convert;

        if (args->flags & BALANCE_ARGS_FLAGS_SOFT)
            opts->flags |= BTRFS_BALANCE_OPTS_SOFT;
    }
}
