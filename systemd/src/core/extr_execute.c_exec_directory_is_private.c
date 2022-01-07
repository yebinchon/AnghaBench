
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ runtime_directory_preserve_mode; int dynamic_user; } ;
typedef scalar_t__ ExecDirectoryType ;
typedef TYPE_1__ ExecContext ;


 scalar_t__ EXEC_DIRECTORY_CONFIGURATION ;
 scalar_t__ EXEC_DIRECTORY_RUNTIME ;
 scalar_t__ EXEC_PRESERVE_NO ;

__attribute__((used)) static bool exec_directory_is_private(const ExecContext *context, ExecDirectoryType type) {
        if (!context->dynamic_user)
                return 0;

        if (type == EXEC_DIRECTORY_CONFIGURATION)
                return 0;

        if (type == EXEC_DIRECTORY_RUNTIME && context->runtime_directory_preserve_mode == EXEC_PRESERVE_NO)
                return 0;

        return 1;
}
