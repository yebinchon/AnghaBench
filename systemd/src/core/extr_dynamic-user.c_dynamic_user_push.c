
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
typedef int uid ;
struct iovec {int dummy; } ;
struct TYPE_4__ {int * storage_socket; } ;
typedef TYPE_1__ DynamicUser ;


 struct iovec IOVEC_INIT (int *,int) ;
 int MSG_DONTWAIT ;
 int assert (TYPE_1__*) ;
 int send_one_fd_iov (int ,int,struct iovec*,int,int ) ;

__attribute__((used)) static int dynamic_user_push(DynamicUser *d, uid_t uid, int lock_fd) {
        struct iovec iov = IOVEC_INIT(&uid, sizeof(uid));

        assert(d);


        return send_one_fd_iov(d->storage_socket[1], lock_fd, &iov, 1, MSG_DONTWAIT);
}
