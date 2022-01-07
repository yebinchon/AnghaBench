
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int p_next; scalar_t__ p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_9__ {scalar_t__ i_id; scalar_t__ i_new_id; } ;
typedef TYPE_2__ sout_stream_sys_t ;
struct TYPE_10__ {scalar_t__ i_id; } ;
typedef TYPE_3__ es_format_t ;


 int msg_Dbg (TYPE_1__*,char*,scalar_t__,scalar_t__) ;
 void* sout_StreamIdAdd (int ,TYPE_3__ const*) ;

__attribute__((used)) static void *AddId( sout_stream_t *p_stream, const es_format_t *p_fmt )
{
    sout_stream_sys_t *p_sys = (sout_stream_sys_t *)p_stream->p_sys;
    es_format_t fmt;

    if( p_fmt->i_id == p_sys->i_id )
    {
        msg_Dbg( p_stream, "turning ID %d to %d", p_sys->i_id,
                 p_sys->i_new_id );

        fmt = *p_fmt;
        fmt.i_id = p_sys->i_new_id;
        p_fmt = &fmt;
    }

    return sout_StreamIdAdd( p_stream->p_next, p_fmt );
}
