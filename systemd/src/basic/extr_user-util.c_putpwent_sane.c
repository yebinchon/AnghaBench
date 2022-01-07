
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef struct passwd const FILE ;


 int EIO ;
 int assert (struct passwd const*) ;
 scalar_t__ errno ;
 int errno_or_else (int ) ;
 scalar_t__ putpwent (struct passwd const*,struct passwd const*) ;

int putpwent_sane(const struct passwd *pw, FILE *stream) {
        assert(pw);
        assert(stream);

        errno = 0;
        if (putpwent(pw, stream) != 0)
                return errno_or_else(EIO);

        return 0;
}
