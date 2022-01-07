
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct stat {int dummy; } ;



__attribute__((used)) static int patch_acls(int fd, const char *name, const struct stat *st, uid_t shift) {
        return 0;
}
