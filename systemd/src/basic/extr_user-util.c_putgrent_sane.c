
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef struct group const FILE ;


 int EIO ;
 int assert (struct group const*) ;
 scalar_t__ errno ;
 int errno_or_else (int ) ;
 scalar_t__ putgrent (struct group const*,struct group const*) ;

int putgrent_sane(const struct group *gr, FILE *stream) {
        assert(gr);
        assert(stream);

        errno = 0;
        if (putgrent(gr, stream) != 0)
                return errno_or_else(EIO);

        return 0;
}
