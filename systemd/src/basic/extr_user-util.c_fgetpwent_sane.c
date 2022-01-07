
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef struct passwd* FILE ;


 int EIO ;
 scalar_t__ ENOENT ;
 int assert (struct passwd**) ;
 scalar_t__ errno ;
 int errno_or_else (int ) ;
 struct passwd* fgetpwent (struct passwd**) ;

int fgetpwent_sane(FILE *stream, struct passwd **pw) {
        struct passwd *p;

        assert(pw);
        assert(stream);

        errno = 0;
        p = fgetpwent(stream);
        if (!p && errno != ENOENT)
                return errno_or_else(EIO);

        *pw = p;
        return !!p;
}
