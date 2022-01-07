
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _ (char*) ;
 char const** sys_errlist ;
 scalar_t__ sys_nerr ;

const char *vlc_strerror_c(int errnum)
{

    if ((unsigned)errnum < (unsigned)sys_nerr)
        return sys_errlist[errnum];

    return _("Unknown error");
}
