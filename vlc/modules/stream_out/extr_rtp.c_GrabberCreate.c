
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sout_stream_t ;
struct TYPE_4__ {int pf_write; int * pf_seek; int * p_sys; void* psz_path; int * p_cfg; void* psz_access; int * p_module; } ;
typedef TYPE_1__ sout_access_out_t ;


 int AccessOutGrabberWrite ;
 void* strdup (char*) ;
 TYPE_1__* vlc_object_create (int *,int) ;

__attribute__((used)) static sout_access_out_t *GrabberCreate( sout_stream_t *p_stream )
{
    sout_access_out_t *p_grab;

    p_grab = vlc_object_create( p_stream, sizeof( *p_grab ) );
    if( p_grab == ((void*)0) )
        return ((void*)0);

    p_grab->p_module = ((void*)0);
    p_grab->psz_access = strdup( "grab" );
    p_grab->p_cfg = ((void*)0);
    p_grab->psz_path = strdup( "" );
    p_grab->p_sys = p_stream;
    p_grab->pf_seek = ((void*)0);
    p_grab->pf_write = AccessOutGrabberWrite;
    return p_grab;
}
