
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_8__ {scalar_t__ i_pos; TYPE_1__* tk; scalar_t__ i_used; scalar_t__ i_tk; scalar_t__ i_offset; } ;
typedef TYPE_3__ stream_sys_t ;
struct TYPE_6__ {scalar_t__ i_end; scalar_t__ i_start; scalar_t__ date; } ;


 int AStreamPrebufferStream (TYPE_2__*) ;
 unsigned int STREAM_CACHE_TRACK ;

__attribute__((used)) static void AStreamControlReset(stream_t *s)
{
    stream_sys_t *sys = s->p_sys;

    sys->i_pos = 0;


    sys->i_offset = 0;
    sys->i_tk = 0;
    sys->i_used = 0;

    for (unsigned i = 0; i < STREAM_CACHE_TRACK; i++)
    {
        sys->tk[i].date = 0;
        sys->tk[i].i_start = sys->i_pos;
        sys->tk[i].i_end = sys->i_pos;
    }


    AStreamPrebufferStream(s);
}
