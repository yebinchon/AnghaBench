
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_nlink; int st_mode; } ;


 int S_ISDIR (int ) ;
 int assert (struct stat const*) ;
 scalar_t__ dangerous_hardlinks () ;

__attribute__((used)) static bool hardlink_vulnerable(const struct stat *st) {
        assert(st);

        return !S_ISDIR(st->st_mode) && st->st_nlink > 1 && dangerous_hardlinks();
}
