
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ n_bind_mounts; scalar_t__ n_temporary_filesystems; scalar_t__ protect_system; scalar_t__ protect_home; TYPE_1__* directories; scalar_t__ dynamic_user; int * prefix; scalar_t__ mount_apivfs; scalar_t__ root_directory; scalar_t__ protect_control_groups; scalar_t__ protect_kernel_logs; scalar_t__ protect_kernel_modules; scalar_t__ protect_kernel_tunables; scalar_t__ private_mounts; scalar_t__ private_devices; scalar_t__ private_tmp; int mount_flags; int inaccessible_paths; int read_only_paths; int read_write_paths; scalar_t__ root_image; } ;
struct TYPE_10__ {scalar_t__ var_tmp_dir; scalar_t__ tmp_dir; } ;
struct TYPE_9__ {int paths; } ;
typedef TYPE_2__ ExecRuntime ;
typedef TYPE_3__ ExecParameters ;
typedef size_t ExecDirectoryType ;
typedef TYPE_3__ ExecContext ;


 size_t EXEC_DIRECTORY_CACHE ;
 size_t EXEC_DIRECTORY_LOGS ;
 size_t EXEC_DIRECTORY_STATE ;
 int IN_SET (int ,int ,int ) ;
 int MS_SHARED ;
 scalar_t__ PROTECT_HOME_NO ;
 scalar_t__ PROTECT_SYSTEM_NO ;
 size_t _EXEC_DIRECTORY_TYPE_MAX ;
 int assert (TYPE_3__ const*) ;
 int strv_isempty (int ) ;

__attribute__((used)) static bool exec_needs_mount_namespace(
                const ExecContext *context,
                const ExecParameters *params,
                const ExecRuntime *runtime) {

        assert(context);
        assert(params);

        if (context->root_image)
                return 1;

        if (!strv_isempty(context->read_write_paths) ||
            !strv_isempty(context->read_only_paths) ||
            !strv_isempty(context->inaccessible_paths))
                return 1;

        if (context->n_bind_mounts > 0)
                return 1;

        if (context->n_temporary_filesystems > 0)
                return 1;

        if (!IN_SET(context->mount_flags, 0, MS_SHARED))
                return 1;

        if (context->private_tmp && runtime && (runtime->tmp_dir || runtime->var_tmp_dir))
                return 1;

        if (context->private_devices ||
            context->private_mounts ||
            context->protect_system != PROTECT_SYSTEM_NO ||
            context->protect_home != PROTECT_HOME_NO ||
            context->protect_kernel_tunables ||
            context->protect_kernel_modules ||
            context->protect_kernel_logs ||
            context->protect_control_groups)
                return 1;

        if (context->root_directory) {
                ExecDirectoryType t;

                if (context->mount_apivfs)
                        return 1;

                for (t = 0; t < _EXEC_DIRECTORY_TYPE_MAX; t++) {
                        if (!params->prefix[t])
                                continue;

                        if (!strv_isempty(context->directories[t].paths))
                                return 1;
                }
        }

        if (context->dynamic_user &&
            (!strv_isempty(context->directories[EXEC_DIRECTORY_STATE].paths) ||
             !strv_isempty(context->directories[EXEC_DIRECTORY_CACHE].paths) ||
             !strv_isempty(context->directories[EXEC_DIRECTORY_LOGS].paths)))
                return 1;

        return 0;
}
