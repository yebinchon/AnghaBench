
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* vlc_strerror_c (int) ;

const char *vlc_strerror(int errnum)
{
    return (vlc_strerror_c(errnum));
}
