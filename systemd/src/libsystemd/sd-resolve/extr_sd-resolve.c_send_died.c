
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int type; } ;
typedef TYPE_1__ RHeader ;


 int MSG_NOSIGNAL ;
 int RESPONSE_DIED ;
 int assert (int) ;
 int errno ;
 scalar_t__ send (int,TYPE_1__*,int,int ) ;

__attribute__((used)) static int send_died(int out_fd) {
        RHeader rh = {
                .type = RESPONSE_DIED,
                .length = sizeof(RHeader),
        };

        assert(out_fd >= 0);

        if (send(out_fd, &rh, rh.length, MSG_NOSIGNAL) < 0)
                return -errno;

        return 0;
}
