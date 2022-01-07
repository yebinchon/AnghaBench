
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_4__ {int f_float; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;


 int VLC_SUCCESS ;
 int vout_ChangeZoom (int *,int,int) ;

__attribute__((used)) static int ZoomCallback( vlc_object_t *obj, char const *name,
                         vlc_value_t prev, vlc_value_t cur, void *data )
{
    vout_thread_t *p_vout = (vout_thread_t *)obj;

    (void) name; (void) prev; (void) data;
    vout_ChangeZoom(p_vout, 1000 * cur.f_float, 1000);
    return VLC_SUCCESS;
}
