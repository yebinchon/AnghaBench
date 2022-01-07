
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int dummy; } ;


 int _PATH_WTMPX ;
 int assert (struct utmpx const*) ;
 int errno ;
 int updwtmpx (int ,struct utmpx const*) ;

__attribute__((used)) static int write_entry_wtmp(const struct utmpx *store) {
        assert(store);




        errno = 0;
        updwtmpx(_PATH_WTMPX, store);
        return -errno;
}
