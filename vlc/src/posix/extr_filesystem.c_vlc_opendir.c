
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int * opendir (char const*) ;

DIR *vlc_opendir (const char *dirname)
{
    return opendir (dirname);
}
