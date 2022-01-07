
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int p_next; scalar_t__ p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_7__ {int id; } ;
typedef TYPE_2__ sout_stream_id_sys_t ;
struct TYPE_8__ {TYPE_2__* id_audio; TYPE_2__* id_video; } ;
typedef TYPE_3__ in_sout_stream_sys_t ;


 int free (TYPE_2__*) ;
 int sout_StreamIdDel (int ,int ) ;

__attribute__((used)) static void DelIn( sout_stream_t *p_stream, void *_id )
{
    in_sout_stream_sys_t *p_sys = (in_sout_stream_sys_t *)p_stream->p_sys;
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;

    if( id == p_sys->id_video ) p_sys->id_video = ((void*)0);
    if( id == p_sys->id_audio ) p_sys->id_audio = ((void*)0);

    sout_StreamIdDel( p_stream->p_next, id->id );
    free( id );
}
