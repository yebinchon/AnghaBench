
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef char const* vlc_value_t ;
typedef char const vlc_object_t ;


 int VLC_SUCCESS ;
 int VLC_UNUSED (char const*) ;
 int vout_ControlChangeSubFilters (int *,int *) ;

__attribute__((used)) static int RestartSubFilterCallback(vlc_object_t *obj, char const *psz_var,
                                    vlc_value_t oldval, vlc_value_t newval,
                                    void *p_data)
{ VLC_UNUSED(obj); VLC_UNUSED(psz_var); VLC_UNUSED(oldval); VLC_UNUSED(newval);
    vout_ControlChangeSubFilters((vout_thread_t *)p_data, ((void*)0));
    return VLC_SUCCESS;
}
