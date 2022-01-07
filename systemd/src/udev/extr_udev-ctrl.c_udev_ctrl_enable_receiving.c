
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa; int un; } ;
struct udev_ctrl {int bound; int cleanup_socket; int sock; int addrlen; TYPE_1__ saddr; } ;


 scalar_t__ EADDRINUSE ;
 int assert (struct udev_ctrl*) ;
 int bind (int ,int *,int ) ;
 scalar_t__ errno ;
 scalar_t__ listen (int ,int ) ;
 int log_error_errno (scalar_t__,char*) ;
 int sockaddr_un_unlink (int *) ;

int udev_ctrl_enable_receiving(struct udev_ctrl *uctrl) {
        int r;

        assert(uctrl);

        if (uctrl->bound)
                return 0;

        r = bind(uctrl->sock, &uctrl->saddr.sa, uctrl->addrlen);
        if (r < 0 && errno == EADDRINUSE) {
                (void) sockaddr_un_unlink(&uctrl->saddr.un);
                r = bind(uctrl->sock, &uctrl->saddr.sa, uctrl->addrlen);
        }

        if (r < 0)
                return log_error_errno(errno, "Failed to bind udev control socket: %m");

        if (listen(uctrl->sock, 0) < 0)
                return log_error_errno(errno, "Failed to listen udev control socket: %m");

        uctrl->bound = 1;
        uctrl->cleanup_socket = 1;

        return 0;
}
