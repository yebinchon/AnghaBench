
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_3__ {int path; } ;
typedef TYPE_1__ ExecCommand ;


 int X_OK ;
 scalar_t__ access (int ,int ) ;
 int errno ;
 int log_unit_error_errno (int *,int ,char*,int ) ;

__attribute__((used)) static int verify_executable(Unit *u, ExecCommand *exec) {
        if (!exec)
                return 0;

        if (access(exec->path, X_OK) < 0)
                return log_unit_error_errno(u, errno, "Command %s is not executable: %m", exec->path);

        return 0;
}
