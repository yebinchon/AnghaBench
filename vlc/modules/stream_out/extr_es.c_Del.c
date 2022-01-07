
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* p_sout; } ;
typedef TYPE_2__ sout_stream_t ;
struct TYPE_11__ {TYPE_4__* p_mux; int p_input; } ;
typedef TYPE_3__ sout_stream_id_sys_t ;
typedef int sout_access_out_t ;
struct TYPE_12__ {int * p_access; } ;
struct TYPE_9__ {int i_out_pace_nocontrol; } ;


 int VLC_UNUSED (TYPE_2__*) ;
 int free (TYPE_3__*) ;
 int sout_AccessOutCanControlPace (int *) ;
 int sout_AccessOutDelete (int *) ;
 int sout_MuxDelete (TYPE_4__*) ;
 int sout_MuxDeleteStream (TYPE_4__*,int ) ;

__attribute__((used)) static void Del( sout_stream_t *p_stream, void *_id )
{
    VLC_UNUSED(p_stream);
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;
    sout_access_out_t *p_access = id->p_mux->p_access;

    sout_MuxDeleteStream( id->p_mux, id->p_input );
    sout_MuxDelete( id->p_mux );
    if( !sout_AccessOutCanControlPace( p_access ) )
        p_stream->p_sout->i_out_pace_nocontrol--;
    sout_AccessOutDelete( p_access );

    free( id );
}
