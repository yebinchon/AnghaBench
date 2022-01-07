
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ date; scalar_t__ i_divider_den; scalar_t__ i_divider_num; unsigned int i_remainder; } ;
typedef TYPE_1__ date_t ;


 scalar_t__ CLOCK_FREQ ;
 scalar_t__ VLC_TICK_INVALID ;
 int assert (int) ;
 scalar_t__ unlikely (int) ;

vlc_tick_t date_Decrement( date_t *p_date, uint32_t i_nb_samples )
{
    if(unlikely(p_date->date == VLC_TICK_INVALID))
        return VLC_TICK_INVALID;
    vlc_tick_t i_dividend = (vlc_tick_t)i_nb_samples * CLOCK_FREQ * p_date->i_divider_den;
    p_date->date -= i_dividend / p_date->i_divider_num;
    unsigned i_rem_adjust = i_dividend % p_date->i_divider_num;

    if( p_date->i_remainder < i_rem_adjust )
    {

        assert( p_date->i_remainder < p_date->i_divider_num);
        p_date->date -= 1;
        p_date->i_remainder += p_date->i_divider_num;
    }

    p_date->i_remainder -= i_rem_adjust;

    return p_date->date;
}
