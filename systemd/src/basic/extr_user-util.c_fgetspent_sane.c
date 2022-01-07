
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spwd {int dummy; } ;
typedef struct spwd* FILE ;


 int EIO ;
 scalar_t__ ENOENT ;
 int assert (struct spwd**) ;
 scalar_t__ errno ;
 int errno_or_else (int ) ;
 struct spwd* fgetspent (struct spwd**) ;

int fgetspent_sane(FILE *stream, struct spwd **sp) {
        struct spwd *s;

        assert(sp);
        assert(stream);

        errno = 0;
        s = fgetspent(stream);
        if (!s && errno != ENOENT)
                return errno_or_else(EIO);

        *sp = s;
        return !!s;
}
