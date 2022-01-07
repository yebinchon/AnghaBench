
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int stat (char const*,struct stat*) ;

int vlc_stat (const char *filename, struct stat *buf)
{
    return stat (filename, buf);
}
