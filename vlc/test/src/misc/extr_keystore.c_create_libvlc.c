
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_libvlc_int; } ;
typedef TYPE_1__ libvlc_instance_t ;


 int VLC_SUCCESS ;
 int VLC_VAR_STRING ;
 int assert (int) ;
 TYPE_1__* libvlc_new (int,char const* const*) ;
 int var_Create (int ,char*,int ) ;

__attribute__((used)) static libvlc_instance_t *
create_libvlc(int i_vlc_argc, const char *const *ppsz_vlc_argv)
{
    libvlc_instance_t *p_libvlc = libvlc_new(i_vlc_argc, ppsz_vlc_argv);
    assert(p_libvlc != ((void*)0));

    int i_ret;
    i_ret = var_Create(p_libvlc->p_libvlc_int, "test-user", VLC_VAR_STRING);
    assert(i_ret == VLC_SUCCESS);
    i_ret = var_Create(p_libvlc->p_libvlc_int, "test-pwd", VLC_VAR_STRING);
    assert(i_ret == VLC_SUCCESS);

    return p_libvlc;
}
