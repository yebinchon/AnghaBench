
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int dummy; } ;


 int ENOENT ;
 int write_entry_utmp (struct utmpx const*) ;
 int write_entry_wtmp (struct utmpx const*) ;

__attribute__((used)) static int write_utmp_wtmp(const struct utmpx *store_utmp, const struct utmpx *store_wtmp) {
        int r, s;

        r = write_entry_utmp(store_utmp);
        s = write_entry_wtmp(store_wtmp);

        if (r >= 0)
                r = s;



        if (r == -ENOENT)
                r = 0;

        return r;
}
