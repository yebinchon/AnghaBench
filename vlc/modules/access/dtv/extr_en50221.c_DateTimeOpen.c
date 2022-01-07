
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int date_time_t ;
struct TYPE_6__ {TYPE_1__* p_sessions; int obj; } ;
typedef TYPE_2__ cam_t ;
struct TYPE_5__ {int p_sys; int pf_close; int pf_manage; int pf_handle; } ;


 int DateTimeClose ;
 int DateTimeHandle ;
 int DateTimeManage ;
 int DateTimeSend (TYPE_2__*,unsigned int) ;
 int calloc (int,int) ;
 int msg_Dbg (int ,char*,unsigned int) ;

__attribute__((used)) static void DateTimeOpen( cam_t * p_cam, unsigned i_session_id )
{
    msg_Dbg( p_cam->obj, "opening DateTime session (%u)", i_session_id );

    p_cam->p_sessions[i_session_id - 1].pf_handle = DateTimeHandle;
    p_cam->p_sessions[i_session_id - 1].pf_manage = DateTimeManage;
    p_cam->p_sessions[i_session_id - 1].pf_close = DateTimeClose;
    p_cam->p_sessions[i_session_id - 1].p_sys = calloc( 1, sizeof(date_time_t) );

    DateTimeSend( p_cam, i_session_id );
}
