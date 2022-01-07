
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f_float; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;


 int VLC_SUCCESS ;
 int vlc_atomic_store_float (void*,int ) ;
 int vlc_to_vdp_contrast (int ) ;

__attribute__((used)) static int ContrastCallback(vlc_object_t *obj, const char *varname,
                            vlc_value_t prev, vlc_value_t cur, void *data)
{
    vlc_atomic_store_float(data, vlc_to_vdp_contrast(cur.f_float));
    (void) obj; (void) varname; (void) prev;
    return VLC_SUCCESS;
}
