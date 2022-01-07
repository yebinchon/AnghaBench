
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* get_error () ;

const char *libvlc_errmsg (void)
{
    return get_error ();
}
