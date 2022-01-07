
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int digest_valid; int fd; } ;
typedef TYPE_1__ khash ;


 int assert (TYPE_1__*) ;
 int errno ;
 scalar_t__ send (int ,int *,int ,int ) ;

int khash_reset(khash *h) {
        ssize_t n;

        assert(h);

        n = send(h->fd, ((void*)0), 0, 0);
        if (n < 0)
                return -errno;

        h->digest_valid = 0;

        return 0;
}
