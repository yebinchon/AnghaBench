
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_int_t ;


 int VLC_VAR_ADDRESS ;
 int assert (int ) ;
 int * s_jvm ;
 int var_Create (int *,char*,int ) ;
 int var_SetAddress (int *,char*,int *) ;

void
system_Configure(libvlc_int_t *p_libvlc, int i_argc, const char *const pp_argv[])
{
    (void)i_argc; (void)pp_argv;
    assert(s_jvm != ((void*)0));
    var_Create(p_libvlc, "android-jvm", VLC_VAR_ADDRESS);
    var_SetAddress(p_libvlc, "android-jvm", s_jvm);
}
