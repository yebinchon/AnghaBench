
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef struct group* FILE ;


 int EIO ;
 scalar_t__ ENOENT ;
 int assert (struct group**) ;
 scalar_t__ errno ;
 int errno_or_else (int ) ;
 struct group* fgetgrent (struct group**) ;

int fgetgrent_sane(FILE *stream, struct group **gr) {
        struct group *g;

        assert(gr);
        assert(stream);

        errno = 0;
        g = fgetgrent(stream);
        if (!g && errno != ENOENT)
                return errno_or_else(EIO);

        *gr = g;
        return !!g;
}
