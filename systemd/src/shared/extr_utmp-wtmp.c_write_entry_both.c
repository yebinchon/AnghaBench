
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int dummy; } ;


 int write_utmp_wtmp (struct utmpx const*,struct utmpx const*) ;

__attribute__((used)) static int write_entry_both(const struct utmpx *store) {
        return write_utmp_wtmp(store, store);
}
