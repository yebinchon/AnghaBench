#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_22__ {size_t i_event; int /*<<< orphan*/ * psz_name; TYPE_2__ const** pp_event; int /*<<< orphan*/  i_source_id; int /*<<< orphan*/  i_id; TYPE_2__ const* p_current; } ;
typedef  TYPE_1__ vlc_epg_t ;
struct TYPE_23__ {scalar_t__ i_start; scalar_t__ i_id; scalar_t__ i_duration; } ;
typedef  TYPE_2__ const vlc_epg_event_t ;
struct TYPE_24__ {TYPE_6__* p_sys; int /*<<< orphan*/  pf_destroy; int /*<<< orphan*/  pf_update; int /*<<< orphan*/  pf_validate; } ;
typedef  TYPE_3__ subpicture_updater_t ;
struct TYPE_25__ {int b_ephemer; int b_absolute; int b_fade; int b_subtitle; scalar_t__ i_stop; scalar_t__ i_start; int /*<<< orphan*/  i_channel; } ;
typedef  TYPE_4__ subpicture_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_26__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  i_epg_time; TYPE_1__* p_epg_table; } ;
typedef  TYPE_5__ input_item_t ;
struct TYPE_27__ {TYPE_1__* epg; void* art; int /*<<< orphan*/  time; int /*<<< orphan*/  obj; } ;
typedef  TYPE_6__ epg_spu_updater_sys_t ;

/* Variables and functions */
 void* FUNC0 () ; 
 int /*<<< orphan*/  OSDEpgDestroy ; 
 int /*<<< orphan*/  OSDEpgUpdate ; 
 int /*<<< orphan*/  OSDEpgValidate ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int VLC_SUCCESS ; 
 scalar_t__ const FUNC2 (int) ; 
 int /*<<< orphan*/  VOUT_SPU_CHANNEL_OSD ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 void* FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__ const*) ; 
 TYPE_2__ const* FUNC13 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  vlc_meta_ArtworkURL ; 
 int /*<<< orphan*/  vlc_meta_Title ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_4__*) ; 

int FUNC18(vout_thread_t *vout, input_item_t *input )
{
    vlc_epg_t *epg = NULL;
    int64_t epg_time;

    /* Look for the current program EPG event */
    FUNC14(&input->lock);

    const vlc_epg_t *tmp = input->p_epg_table;
    if ( tmp )
    {
        /* Pick table designated event, or first/next one */
        const vlc_epg_event_t *p_current_event = tmp->p_current;
        epg = FUNC10(tmp->i_id, tmp->i_source_id);
        if(epg)
        {
            if( p_current_event )
            {
                vlc_epg_event_t *p_event = FUNC13(p_current_event);
                if(p_event)
                {
                    if(!FUNC8(epg, p_event))
                        FUNC12(p_event);
                    else
                        FUNC11(epg, p_event->i_start);
                }
            }

            /* Add next event if any */
            vlc_epg_event_t *p_next = NULL;
            for(size_t i=0; i<tmp->i_event; i++)
            {
                vlc_epg_event_t *p_evt = tmp->pp_event[i];
                if((!p_next || p_next->i_start > p_evt->i_start) &&
                   (!p_current_event || (p_evt->i_id != p_current_event->i_id &&
                                         p_evt->i_start >= p_current_event->i_start +
                                                           p_current_event->i_duration )))
                {
                    p_next = tmp->pp_event[i];
                }
            }
            if( p_next )
            {
                vlc_epg_event_t *p_event = FUNC13(p_next);
                if(!FUNC8(epg, p_event))
                    FUNC12(p_event);
            }

            if(epg->i_event > 0)
            {
                epg->psz_name = FUNC6(tmp->psz_name);
            }
            else
            {
                FUNC9(epg);
                epg = NULL;
            }
        }
    }
    epg_time = input->i_epg_time;
    FUNC15(&input->lock);

    /* If no EPG event has been found. */
    if (epg == NULL)
        return VLC_EGENERIC;

    if(epg->psz_name == NULL) /* Fallback (title == channel name) */
        epg->psz_name = FUNC4( input, vlc_meta_Title );

    epg_spu_updater_sys_t *sys = FUNC5(sizeof(*sys));
    if (!sys) {
        FUNC9(epg);
        return VLC_EGENERIC;
    }
    sys->epg = epg;
    sys->obj = FUNC1(vout);
    sys->time = epg_time;
    sys->art = FUNC4( input, vlc_meta_ArtworkURL );
    if( !sys->art )
        sys->art = FUNC0();

    subpicture_updater_t updater = {
        .pf_validate = OSDEpgValidate,
        .pf_update   = OSDEpgUpdate,
        .pf_destroy  = OSDEpgDestroy,
        .p_sys       = sys
    };

    const vlc_tick_t now = FUNC16();
    subpicture_t *subpic = FUNC7(&updater);
    if (!subpic) {
        FUNC9(sys->epg);
        FUNC3(sys);
        return VLC_EGENERIC;
    }

    subpic->i_channel  = VOUT_SPU_CHANNEL_OSD;
    subpic->i_start    = now;
    subpic->i_stop     = now + FUNC2(3);
    subpic->b_ephemer  = true;
    subpic->b_absolute = false;
    subpic->b_fade     = true;
    subpic->b_subtitle = false;

    FUNC17(vout, subpic);

    return VLC_SUCCESS;
}