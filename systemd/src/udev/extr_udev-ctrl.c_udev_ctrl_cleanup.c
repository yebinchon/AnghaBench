
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int un; } ;
struct udev_ctrl {TYPE_1__ saddr; scalar_t__ cleanup_socket; } ;


 int sockaddr_un_unlink (int *) ;

int udev_ctrl_cleanup(struct udev_ctrl *uctrl) {
        if (!uctrl)
                return 0;
        if (uctrl->cleanup_socket)
                sockaddr_un_unlink(&uctrl->saddr.un);
        return 0;
}
