
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int i_dts; int i_length; struct TYPE_3__* p_next; } ;
typedef TYPE_1__ block_t ;



__attribute__((used)) static void OggSetDate( block_t *p_og, vlc_tick_t i_dts, vlc_tick_t i_length )
{
    int i_count;
    block_t *p_tmp;
    vlc_tick_t i_delta;

    for( p_tmp = p_og, i_count = 0; p_tmp != ((void*)0); p_tmp = p_tmp->p_next )
    {
        i_count++;
    }

    if( i_count == 0 ) return;

    i_delta = i_length / i_count;

    for( p_tmp = p_og; p_tmp != ((void*)0); p_tmp = p_tmp->p_next )
    {
        p_tmp->i_dts = i_dts;
        p_tmp->i_length = i_delta;

        i_dts += i_delta;
    }
}
