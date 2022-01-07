
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int digest_valid; size_t digest_size; int digest; int fd; } ;
typedef TYPE_1__ khash ;


 int EIO ;
 int assert (TYPE_1__*) ;
 scalar_t__ recv (int ,int ,size_t,int ) ;

__attribute__((used)) static int retrieve_digest(khash *h) {
        ssize_t n;

        assert(h);

        if (h->digest_valid)
                return 0;

        n = recv(h->fd, h->digest, h->digest_size, 0);
        if (n < 0)
                return n;
        if ((size_t) n != h->digest_size)
                return -EIO;

        h->digest_valid = 1;

        return 0;
}
