
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* msg; int code; } ;
typedef TYPE_1__ wsaerrmsg_t ;


 char const** _sys_errlist ;
 scalar_t__ _sys_nerr ;
 TYPE_1__* wsaerrmsg ;

const char *vlc_strerror_c(int errnum)
{

    if ((unsigned)errnum < (unsigned)_sys_nerr)
        return _sys_errlist[errnum];


    for (const wsaerrmsg_t *e = wsaerrmsg; e->msg != ((void*)0); e++)
        if (e->code == errnum)
            return e->msg;

    return "Unknown error";
}
