
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_sessions; int obj; } ;
typedef TYPE_2__ cam_t ;
struct TYPE_5__ {int pf_handle; } ;


 int AOT_APPLICATION_INFO_ENQ ;
 int APDUSend (TYPE_2__*,unsigned int,int ,int *,int ) ;
 int ApplicationInformationHandle ;
 int msg_Dbg (int ,char*,unsigned int) ;

__attribute__((used)) static void ApplicationInformationOpen( cam_t * p_cam, unsigned i_session_id )
{
    msg_Dbg( p_cam->obj, "opening ApplicationInformation session (%u)",
             i_session_id );
    p_cam->p_sessions[i_session_id - 1].pf_handle =
        ApplicationInformationHandle;
    APDUSend( p_cam, i_session_id, AOT_APPLICATION_INFO_ENQ, ((void*)0), 0 );
}
