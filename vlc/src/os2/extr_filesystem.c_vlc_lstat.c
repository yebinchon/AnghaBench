
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int vlc_statEx (char const*,struct stat*,int) ;

int vlc_lstat (const char *filename, struct stat *buf)
{
    return vlc_statEx (filename, buf, 0);
}
