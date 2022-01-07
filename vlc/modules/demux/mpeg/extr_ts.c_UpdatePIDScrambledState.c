
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* p_stream; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ u; int i_flags; int i_pid; } ;
typedef TYPE_3__ ts_pid_t ;
struct TYPE_12__ {int out; } ;
typedef TYPE_4__ demux_t ;
struct TYPE_9__ {int p_es; } ;


 int FLAG_SCRAMBLED ;
 int SCRAMBLED (TYPE_3__) ;
 scalar_t__ TYPE_STREAM ;
 int UpdateESScrambledState (int ,int ,int) ;
 int msg_Warn (TYPE_4__*,char*,int ,int,int) ;

__attribute__((used)) static void UpdatePIDScrambledState( demux_t *p_demux, ts_pid_t *p_pid, bool b_scrambled )
{
    if( !SCRAMBLED(*p_pid) == !b_scrambled )
        return;

    msg_Warn( p_demux, "scrambled state changed on pid %d (%d->%d)",
              p_pid->i_pid, !!SCRAMBLED(*p_pid), b_scrambled );

    if( b_scrambled )
        p_pid->i_flags |= FLAG_SCRAMBLED;
    else
        p_pid->i_flags &= ~FLAG_SCRAMBLED;

    if( p_pid->type == TYPE_STREAM )
        UpdateESScrambledState( p_demux->out, p_pid->u.p_stream->p_es, b_scrambled );
}
