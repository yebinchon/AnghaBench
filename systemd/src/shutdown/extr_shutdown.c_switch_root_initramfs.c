
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MS_BIND ;
 int MS_PRIVATE ;
 int errno ;
 int log_error_errno (int ,char*) ;
 scalar_t__ mount (char*,char*,int *,int ,int *) ;
 int switch_root (char*,char*,int,int ) ;

__attribute__((used)) static int switch_root_initramfs(void) {
        if (mount("/run/initramfs", "/run/initramfs", ((void*)0), MS_BIND, ((void*)0)) < 0)
                return log_error_errno(errno, "Failed to mount bind /run/initramfs on /run/initramfs: %m");

        if (mount(((void*)0), "/run/initramfs", ((void*)0), MS_PRIVATE, ((void*)0)) < 0)
                return log_error_errno(errno, "Failed to make /run/initramfs private mount: %m");





        return switch_root("/run/initramfs", "/oldroot", 0, MS_BIND);
}
