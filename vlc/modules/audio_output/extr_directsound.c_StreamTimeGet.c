
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int sys; } ;
typedef TYPE_1__ aout_stream_t ;
typedef int HRESULT ;


 int TimeGet (int ,int *) ;

__attribute__((used)) static HRESULT StreamTimeGet( aout_stream_t *s, vlc_tick_t *delay )
{
    return TimeGet( s->sys, delay );
}
