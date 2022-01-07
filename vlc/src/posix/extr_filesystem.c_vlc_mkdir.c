
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int mkdir (char const*,int ) ;

int vlc_mkdir (const char *dirname, mode_t mode)
{
    return mkdir (dirname, mode);
}
