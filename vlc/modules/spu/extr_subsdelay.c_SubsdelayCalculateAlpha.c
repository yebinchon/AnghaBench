
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int i_min_alpha; int i_overlap; } ;
typedef TYPE_2__ filter_sys_t ;



__attribute__((used)) static int SubsdelayCalculateAlpha( filter_t *p_filter, int i_overlapping, int i_source_alpha )
{
    int i_new_alpha;
    int i_min_alpha;

    filter_sys_t *p_sys = p_filter->p_sys;

    i_min_alpha = p_sys->i_min_alpha;

    if( i_overlapping > p_sys->i_overlap - 1)
    {
        i_overlapping = p_sys->i_overlap - 1;
    }

    switch ( p_sys->i_overlap )
    {
    case 1:
        i_new_alpha = 255;
        break;

    case 2:
        i_new_alpha = 255 - i_overlapping * ( 255 - i_min_alpha );
        break;

    case 3:
        i_new_alpha = 255 - i_overlapping * ( 255 - i_min_alpha ) / 2;
        break;

    default:
        i_new_alpha = 255 - i_overlapping * ( 255 - i_min_alpha ) / 3;
        break;
    }

    return ( i_source_alpha * i_new_alpha ) / 255;
}
