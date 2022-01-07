
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int digest_valid; int fd; } ;
typedef TYPE_1__ khash ;


 int MSG_MORE ;
 int assert (TYPE_1__*) ;
 int errno ;
 scalar_t__ send (int ,void const*,size_t,int ) ;

int khash_put(khash *h, const void *buffer, size_t size) {
        ssize_t n;

        assert(h);
        assert(buffer || size == 0);

        if (size <= 0)
                return 0;

        n = send(h->fd, buffer, size, MSG_MORE);
        if (n < 0)
                return -errno;

        h->digest_valid = 0;

        return 0;
}
