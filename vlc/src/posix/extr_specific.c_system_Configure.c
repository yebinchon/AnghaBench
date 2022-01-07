
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_int_t ;


 int system_ConfigureDbus (int *,int,char const* const*) ;

void system_Configure(libvlc_int_t *libvlc,
                      int argc, const char *const argv[])
{
    system_ConfigureDbus(libvlc, argc, argv);
}
