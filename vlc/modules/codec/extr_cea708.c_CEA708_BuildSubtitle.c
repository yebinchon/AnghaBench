
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int margin_ratio; int region; } ;
typedef TYPE_2__ subtext_updater_sys_t ;
typedef int substext_updater_region_t ;
struct TYPE_11__ {TYPE_2__* p_sys; } ;
struct TYPE_13__ {int b_ephemer; int b_absolute; int b_subtitle; scalar_t__ i_stop; scalar_t__ i_start; TYPE_1__ updater; } ;
typedef TYPE_3__ subpicture_t ;
struct TYPE_14__ {scalar_t__ b_visible; scalar_t__ b_defined; } ;
typedef TYPE_4__ cea708_window_t ;
struct TYPE_15__ {scalar_t__ i_clock; TYPE_4__* window; int p_dec; } ;
typedef TYPE_5__ cea708_t ;


 int CEA708SpuConvert (TYPE_4__*,int *) ;
 int CEA708_SCREEN_SAFE_MARGIN_RATIO ;
 size_t CEA708_WINDOWS_COUNT ;
 scalar_t__ CEA708_Window_RowCount (TYPE_4__*) ;
 int SubpictureUpdaterSysRegionAdd (int *,int *) ;
 int * SubpictureUpdaterSysRegionNew () ;
 scalar_t__ VLC_TICK_FROM_SEC (int) ;
 TYPE_3__* decoder_NewSubpictureText (int ) ;

__attribute__((used)) static subpicture_t *CEA708_BuildSubtitle( cea708_t *p_cea708 )
{
    subpicture_t *p_spu = decoder_NewSubpictureText( p_cea708->p_dec );
    if( !p_spu )
        return ((void*)0);

    subtext_updater_sys_t *p_spu_sys = p_spu->updater.p_sys;
    substext_updater_region_t *p_region = &p_spu_sys->region;

    p_spu_sys->margin_ratio = CEA708_SCREEN_SAFE_MARGIN_RATIO;

    bool first = 1;

    for(size_t i=0; i<CEA708_WINDOWS_COUNT; i++)
    {
        cea708_window_t *p_w = &p_cea708->window[i];
        if( p_w->b_defined && p_w->b_visible && CEA708_Window_RowCount( p_w ) )
        {
            if( !first )
            {
                substext_updater_region_t *p_newregion =
                        SubpictureUpdaterSysRegionNew();
                if( p_newregion == ((void*)0) )
                    break;
                SubpictureUpdaterSysRegionAdd( p_region, p_newregion );
                p_region = p_newregion;
            }
            first = 0;


            CEA708SpuConvert( p_w, p_region );
        }
    }

    p_spu->i_start = p_cea708->i_clock;
    p_spu->i_stop = p_cea708->i_clock + VLC_TICK_FROM_SEC(10);

    p_spu->b_ephemer = 1;
    p_spu->b_absolute = 0;
    p_spu->b_subtitle = 1;

    return p_spu;
}
