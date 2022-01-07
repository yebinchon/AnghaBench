
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* vlc_value_t ;
typedef char const vlc_object_t ;


 int VLC_SUCCESS ;
 int VLC_UNUSED (char const*) ;
 int var_TriggerCallback (char const*,char*) ;

__attribute__((used)) static int RestartFilterCallback( vlc_object_t *obj, char const *psz_name,
                                  vlc_value_t oldval, vlc_value_t newval,
                                  void *p_data )
{ VLC_UNUSED(obj); VLC_UNUSED(psz_name); VLC_UNUSED(oldval);
    VLC_UNUSED(newval);

    var_TriggerCallback( (vlc_object_t *)p_data, "video-filter" );
    return VLC_SUCCESS;
}
