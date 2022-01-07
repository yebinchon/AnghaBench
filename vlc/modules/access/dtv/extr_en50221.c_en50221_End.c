
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fd; TYPE_1__* p_sessions; int ** pp_selected_programs; } ;
typedef TYPE_2__ cam_t ;
struct TYPE_6__ {int (* pf_close ) (TYPE_2__*,unsigned int) ;scalar_t__ i_resource_id; } ;


 unsigned int MAX_PROGRAMS ;
 unsigned int MAX_SESSIONS ;
 int en50221_capmt_Delete (int *) ;
 int free (TYPE_2__*) ;
 int stub1 (TYPE_2__*,unsigned int) ;
 int vlc_close (int ) ;

void en50221_End( cam_t * p_cam )
{
    for( unsigned i = 0; i < MAX_PROGRAMS; i++ )
    {
        if( p_cam->pp_selected_programs[i] != ((void*)0) )
        {
            en50221_capmt_Delete( p_cam->pp_selected_programs[i] );
        }
    }

    for( unsigned i = 1; i <= MAX_SESSIONS; i++ )
    {
        if( p_cam->p_sessions[i - 1].i_resource_id
              && p_cam->p_sessions[i - 1].pf_close != ((void*)0) )
        {
            p_cam->p_sessions[i - 1].pf_close( p_cam, i );
        }
    }

    vlc_close( p_cam->fd );
    free( p_cam );
}
