
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* osdep_get_cwd_fallback (int) ;

char *
osdep_get_cwd(int fd)
{
 return (osdep_get_cwd_fallback(fd));
}
