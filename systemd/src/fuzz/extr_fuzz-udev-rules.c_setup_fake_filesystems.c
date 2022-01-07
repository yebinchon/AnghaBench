
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_mounted; scalar_t__ ignore_mount_error; int target; } ;


 unsigned int ELEMENTSOF (TYPE_1__*) ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int MS_BIND ;
 int errno ;
 TYPE_1__* fakefss ;
 int log_full_errno (int ,int,char*,int ) ;
 scalar_t__ mount (char const*,int ,int *,int ,int *) ;

__attribute__((used)) static int setup_fake_filesystems(const char *runtime_dir) {
        for (unsigned i = 0; i < ELEMENTSOF(fakefss); i++) {
                if (mount(runtime_dir, fakefss[i].target, ((void*)0), MS_BIND, ((void*)0)) < 0) {
                        log_full_errno(fakefss[i].ignore_mount_error ? LOG_DEBUG : LOG_ERR, errno, "Failed to mount %s: %m", fakefss[i].target);
                        if (!fakefss[i].ignore_mount_error)
                                return -errno;
                } else
                        fakefss[i].is_mounted = 1;
        }

        return 0;
}
