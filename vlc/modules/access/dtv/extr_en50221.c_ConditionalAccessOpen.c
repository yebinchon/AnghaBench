
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int system_ids_t ;
struct TYPE_6__ {TYPE_1__* p_sessions; int obj; } ;
typedef TYPE_2__ cam_t ;
struct TYPE_5__ {int p_sys; int pf_close; int pf_handle; } ;


 int AOT_CA_INFO_ENQ ;
 int APDUSend (TYPE_2__*,unsigned int,int ,int *,int ) ;
 int ConditionalAccessClose ;
 int ConditionalAccessHandle ;
 int calloc (int,int) ;
 int msg_Dbg (int ,char*,unsigned int) ;

__attribute__((used)) static void ConditionalAccessOpen( cam_t * p_cam, unsigned i_session_id )
{
    msg_Dbg( p_cam->obj, "opening ConditionalAccess session (%u)",
             i_session_id );
    p_cam->p_sessions[i_session_id - 1].pf_handle = ConditionalAccessHandle;
    p_cam->p_sessions[i_session_id - 1].pf_close = ConditionalAccessClose;
    p_cam->p_sessions[i_session_id - 1].p_sys = calloc( 1, sizeof(system_ids_t) );

    APDUSend( p_cam, i_session_id, AOT_CA_INFO_ENQ, ((void*)0), 0 );
}
