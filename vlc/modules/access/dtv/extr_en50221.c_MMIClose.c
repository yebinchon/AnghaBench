
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mmi_t ;
struct TYPE_5__ {int* pb_slot_mmi_expected; int* pb_slot_mmi_undisplayed; int obj; TYPE_1__* p_sessions; } ;
typedef TYPE_2__ cam_t ;
struct TYPE_4__ {int i_slot; scalar_t__ p_sys; } ;


 int MMIFree (int *) ;
 int free (scalar_t__) ;
 int msg_Dbg (int ,char*,int) ;

__attribute__((used)) static void MMIClose( cam_t *p_cam, int i_session_id )
{
    int i_slot = p_cam->p_sessions[i_session_id - 1].i_slot;
    mmi_t *p_mmi = (mmi_t *)p_cam->p_sessions[i_session_id - 1].p_sys;

    MMIFree( p_mmi );
    free( p_cam->p_sessions[i_session_id - 1].p_sys );

    msg_Dbg( p_cam->obj, "closing MMI session (%d)", i_session_id );
    p_cam->pb_slot_mmi_expected[i_slot] = 0;
    p_cam->pb_slot_mmi_undisplayed[i_slot] = 1;
}
