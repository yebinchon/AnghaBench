
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ quot; scalar_t__ rem; } ;
typedef TYPE_1__ lldiv_t ;
struct TYPE_6__ {scalar_t__ date; int i_divider_num; scalar_t__ i_divider_den; int i_remainder; } ;
typedef TYPE_2__ date_t ;


 scalar_t__ CLOCK_FREQ ;
 scalar_t__ VLC_TICK_INVALID ;
 int assert (int) ;
 TYPE_1__ lldiv (scalar_t__,int) ;
 scalar_t__ unlikely (int) ;

vlc_tick_t date_Increment( date_t *p_date, uint32_t i_nb_samples )
{
    if(unlikely(p_date->date == VLC_TICK_INVALID))
        return VLC_TICK_INVALID;
    assert( p_date->i_divider_num != 0 );
    vlc_tick_t i_dividend = i_nb_samples * CLOCK_FREQ * p_date->i_divider_den;
    lldiv_t d = lldiv( i_dividend, p_date->i_divider_num );

    p_date->date += d.quot;
    p_date->i_remainder += (int)d.rem;

    if( p_date->i_remainder >= p_date->i_divider_num )
    {

        assert( p_date->i_remainder < 2*p_date->i_divider_num);
        p_date->date += 1;
        p_date->i_remainder -= p_date->i_divider_num;
    }

    return p_date->date;
}
