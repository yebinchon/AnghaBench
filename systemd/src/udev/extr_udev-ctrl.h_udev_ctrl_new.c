
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_ctrl {int dummy; } ;


 int udev_ctrl_new_from_fd (struct udev_ctrl**,int) ;

__attribute__((used)) static inline int udev_ctrl_new(struct udev_ctrl **ret) {
        return udev_ctrl_new_from_fd(ret, -1);
}
