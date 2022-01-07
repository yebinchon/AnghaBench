
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int arg_root ;
 int errno ;
 char* prefix_roota (int ,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int root_stat(const char *p, struct stat *st) {
        const char *fix;

        fix = prefix_roota(arg_root, p);
        if (stat(fix, st) < 0)
                return -errno;

        return 0;
}
