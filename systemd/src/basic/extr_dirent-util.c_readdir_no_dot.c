
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int DIR ;


 scalar_t__ dot_or_dot_dot (int ) ;
 struct dirent* readdir (int *) ;

struct dirent* readdir_no_dot(DIR *dirp) {
        struct dirent* d;

        for (;;) {
                d = readdir(dirp);
                if (d && dot_or_dot_dot(d->d_name))
                        continue;
                return d;
        }
}
