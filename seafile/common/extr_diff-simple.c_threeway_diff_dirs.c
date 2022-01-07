
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int SeafDirent ;


 int TRUE ;

__attribute__((used)) static int
threeway_diff_dirs (int n, const char *basedir, SeafDirent *dirs[], void *vdata,
                    gboolean *recurse)
{
    *recurse = TRUE;
    return 0;
}
