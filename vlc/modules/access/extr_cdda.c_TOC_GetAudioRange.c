
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_tracks; int i_first_track; int i_last_track; TYPE_2__* p_sectors; } ;
typedef TYPE_1__ vcddev_toc_t ;
struct TYPE_5__ {int i_control; scalar_t__ i_lba; } ;
typedef TYPE_2__ vcddev_sector_t ;


 int CD_ROM_DATA_FLAG ;
 scalar_t__ CD_ROM_XA_INTERVAL ;

__attribute__((used)) static int TOC_GetAudioRange(vcddev_toc_t *p_toc,
                             int *pi_first, int *pi_last)
{
    if( p_toc->i_tracks < 1 )
        return 0;

    int i_first = p_toc->i_first_track;
    int i_last = p_toc->i_last_track;
    for(int i=i_first; i<p_toc->i_tracks; i++)
    {
        if((p_toc->p_sectors[i - 1].i_control & CD_ROM_DATA_FLAG) == 0)
            break;
        i_first++;
    }
    for(int i=i_last; i > 0; i--)
    {
        if((p_toc->p_sectors[i - 1].i_control & CD_ROM_DATA_FLAG) == 0)
            break;
        i_last--;
    }



    do
    {
        vcddev_sector_t *p_last = &p_toc->p_sectors[i_last - p_toc->i_first_track];
        vcddev_sector_t *p_lout = &p_toc->p_sectors[p_toc->i_tracks];
        if(p_lout->i_lba > p_last->i_lba || i_last <= i_first)
            break;

        i_last = i_last - 1;
        p_toc->i_last_track = i_last;
        p_last->i_lba -= CD_ROM_XA_INTERVAL;
        p_toc->i_tracks--;
    } while( i_last > i_first );

    *pi_first = i_first;
    *pi_last = i_last;
    return (i_last >= i_first) ? i_last - i_first + 1 : 0;
}
