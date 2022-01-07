
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int assert (int ) ;
 int context ;
 int free_error () ;
 scalar_t__ oom ;
 int vasprintf (char**,char const*,int ) ;
 int vlc_threadvar_set (int ,char*) ;

const char *libvlc_vprinterr (const char *fmt, va_list ap)
{
    char *msg;

    assert (fmt != ((void*)0));
    if (vasprintf (&msg, fmt, ap) == -1)
        msg = (char *)oom;

    free_error ();
    vlc_threadvar_set (context, msg);
    return msg;
}
