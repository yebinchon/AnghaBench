
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spwd {int dummy; } ;
typedef struct spwd const FILE ;


 int EIO ;
 int assert (struct spwd const*) ;
 scalar_t__ errno ;
 int errno_or_else (int ) ;
 scalar_t__ putspent (struct spwd const*,struct spwd const*) ;

int putspent_sane(const struct spwd *sp, FILE *stream) {
        assert(sp);
        assert(stream);

        errno = 0;
        if (putspent(sp, stream) != 0)
                return errno_or_else(EIO);

        return 0;
}
