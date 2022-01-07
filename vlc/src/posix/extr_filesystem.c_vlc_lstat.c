
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int lstat (char const*,struct stat*) ;

int vlc_lstat (const char *filename, struct stat *buf)
{
    return lstat (filename, buf);
}
