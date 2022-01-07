
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct msghdr {size_t msg_iovlen; size_t member_1; struct iovec* member_0; struct iovec* msg_iov; } ;
struct iovec {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int digest_valid; int fd; } ;
typedef TYPE_1__ khash ;


 int MSG_MORE ;
 int assert (TYPE_1__*) ;
 int errno ;
 scalar_t__ sendmsg (int ,struct msghdr*,int ) ;

int khash_put_iovec(khash *h, const struct iovec *iovec, size_t n) {
        struct msghdr mh = {
                mh.msg_iov = (struct iovec*) iovec,
                mh.msg_iovlen = n,
        };
        ssize_t k;

        assert(h);
        assert(iovec || n == 0);

        if (n <= 0)
                return 0;

        k = sendmsg(h->fd, &mh, MSG_MORE);
        if (k < 0)
                return -errno;

        h->digest_valid = 0;

        return 0;
}
