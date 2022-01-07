
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_7__ {int system; } ;
struct TYPE_6__ {scalar_t__ system; } ;
struct TYPE_8__ {int b_has_external_clock; int lock; TYPE_2__ last; TYPE_1__ ref; scalar_t__ i_external_clock; int b_has_reference; } ;
typedef TYPE_3__ input_clock_t ;


 scalar_t__ ClockGetTsOffset (TYPE_3__*) ;
 int assert (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_clock_ChangeSystemOrigin( input_clock_t *cl, bool b_absolute, vlc_tick_t i_system )
{
    vlc_mutex_lock( &cl->lock );

    assert( cl->b_has_reference );
    vlc_tick_t i_offset;
    if( b_absolute )
    {
        i_offset = i_system - cl->ref.system - ClockGetTsOffset( cl );
    }
    else
    {
        if( !cl->b_has_external_clock )
        {
            cl->b_has_external_clock = 1;
            cl->i_external_clock = i_system;
        }
        i_offset = i_system - cl->i_external_clock;
    }

    cl->ref.system += i_offset;
    cl->last.system += i_offset;

    vlc_mutex_unlock( &cl->lock );
}
