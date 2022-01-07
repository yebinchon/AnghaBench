
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_4__ {scalar_t__ b_bool; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;


 int VLC_SUCCESS ;
 int VOUT_WINDOW_STATE_ABOVE ;
 int VOUT_WINDOW_STATE_NORMAL ;
 int vout_ChangeWindowState (int *,int ) ;

__attribute__((used)) static int AboveCallback( vlc_object_t *obj, char const *name,
                          vlc_value_t prev, vlc_value_t cur, void *data )
{
    vout_ChangeWindowState((vout_thread_t *)obj,
        cur.b_bool ? VOUT_WINDOW_STATE_ABOVE : VOUT_WINDOW_STATE_NORMAL);
    (void) name; (void) prev; (void) data;
    return VLC_SUCCESS;
}
