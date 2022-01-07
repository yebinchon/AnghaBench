
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int dummy; } ;


 int _PATH_UTMPX ;
 int assert (struct utmpx const*) ;
 int endutxent () ;
 int errno ;
 int pututxline (struct utmpx const*) ;
 int setutxent () ;
 scalar_t__ utmpxname (int ) ;

__attribute__((used)) static int write_entry_utmp(const struct utmpx *store) {
        int r;

        assert(store);





        if (utmpxname(_PATH_UTMPX) < 0)
                return -errno;

        setutxent();

        if (!pututxline(store))
                r = -errno;
        else
                r = 0;

        endutxent();

        return r;
}
