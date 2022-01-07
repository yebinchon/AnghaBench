
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p_sessions; int obj; } ;
typedef TYPE_2__ cam_t ;
struct TYPE_4__ {int p_sys; } ;


 int free (int ) ;
 int msg_Dbg (int ,char*,int) ;

__attribute__((used)) static void DateTimeClose( cam_t * p_cam, int i_session_id )
{
    msg_Dbg( p_cam->obj, "closing DateTime session (%d)", i_session_id );

    free( p_cam->p_sessions[i_session_id - 1].p_sys );
}
