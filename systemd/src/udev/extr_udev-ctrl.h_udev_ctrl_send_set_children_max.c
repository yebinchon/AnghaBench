
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_ctrl {int dummy; } ;


 int UDEV_CTRL_SET_CHILDREN_MAX ;
 int udev_ctrl_send (struct udev_ctrl*,int ,int,int *) ;

__attribute__((used)) static inline int udev_ctrl_send_set_children_max(struct udev_ctrl *uctrl, int count) {
        return udev_ctrl_send(uctrl, UDEV_CTRL_SET_CHILDREN_MAX, count, ((void*)0));
}
