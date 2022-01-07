
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int vout_thread_t ;
typedef scalar_t__ vlc_tick_t ;
struct TYPE_22__ {size_t i_event; int * psz_name; TYPE_2__ const** pp_event; int i_source_id; int i_id; TYPE_2__ const* p_current; } ;
typedef TYPE_1__ vlc_epg_t ;
struct TYPE_23__ {scalar_t__ i_start; scalar_t__ i_id; scalar_t__ i_duration; } ;
typedef TYPE_2__ const vlc_epg_event_t ;
struct TYPE_24__ {TYPE_6__* p_sys; int pf_destroy; int pf_update; int pf_validate; } ;
typedef TYPE_3__ subpicture_updater_t ;
struct TYPE_25__ {int b_ephemer; int b_absolute; int b_fade; int b_subtitle; scalar_t__ i_stop; scalar_t__ i_start; int i_channel; } ;
typedef TYPE_4__ subpicture_t ;
typedef int int64_t ;
struct TYPE_26__ {int lock; int i_epg_time; TYPE_1__* p_epg_table; } ;
typedef TYPE_5__ input_item_t ;
struct TYPE_27__ {TYPE_1__* epg; void* art; int time; int obj; } ;
typedef TYPE_6__ epg_spu_updater_sys_t ;


 void* GetDefaultArtUri () ;
 int OSDEpgDestroy ;
 int OSDEpgUpdate ;
 int OSDEpgValidate ;
 int VLC_EGENERIC ;
 int VLC_OBJECT (int *) ;
 int VLC_SUCCESS ;
 scalar_t__ const VLC_TICK_FROM_SEC (int) ;
 int VOUT_SPU_CHANNEL_OSD ;
 int free (TYPE_6__*) ;
 void* input_item_GetMeta (TYPE_5__*,int ) ;
 TYPE_6__* malloc (int) ;
 int * strdup (int *) ;
 TYPE_4__* subpicture_New (TYPE_3__*) ;
 int vlc_epg_AddEvent (TYPE_1__*,TYPE_2__ const*) ;
 int vlc_epg_Delete (TYPE_1__*) ;
 TYPE_1__* vlc_epg_New (int ,int ) ;
 int vlc_epg_SetCurrent (TYPE_1__*,scalar_t__) ;
 int vlc_epg_event_Delete (TYPE_2__ const*) ;
 TYPE_2__ const* vlc_epg_event_Duplicate (TYPE_2__ const*) ;
 int vlc_meta_ArtworkURL ;
 int vlc_meta_Title ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 scalar_t__ vlc_tick_now () ;
 int vout_PutSubpicture (int *,TYPE_4__*) ;

int vout_OSDEpg(vout_thread_t *vout, input_item_t *input )
{
    vlc_epg_t *epg = ((void*)0);
    int64_t epg_time;


    vlc_mutex_lock(&input->lock);

    const vlc_epg_t *tmp = input->p_epg_table;
    if ( tmp )
    {

        const vlc_epg_event_t *p_current_event = tmp->p_current;
        epg = vlc_epg_New(tmp->i_id, tmp->i_source_id);
        if(epg)
        {
            if( p_current_event )
            {
                vlc_epg_event_t *p_event = vlc_epg_event_Duplicate(p_current_event);
                if(p_event)
                {
                    if(!vlc_epg_AddEvent(epg, p_event))
                        vlc_epg_event_Delete(p_event);
                    else
                        vlc_epg_SetCurrent(epg, p_event->i_start);
                }
            }


            vlc_epg_event_t *p_next = ((void*)0);
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
                vlc_epg_event_t *p_event = vlc_epg_event_Duplicate(p_next);
                if(!vlc_epg_AddEvent(epg, p_event))
                    vlc_epg_event_Delete(p_event);
            }

            if(epg->i_event > 0)
            {
                epg->psz_name = strdup(tmp->psz_name);
            }
            else
            {
                vlc_epg_Delete(epg);
                epg = ((void*)0);
            }
        }
    }
    epg_time = input->i_epg_time;
    vlc_mutex_unlock(&input->lock);


    if (epg == ((void*)0))
        return VLC_EGENERIC;

    if(epg->psz_name == ((void*)0))
        epg->psz_name = input_item_GetMeta( input, vlc_meta_Title );

    epg_spu_updater_sys_t *sys = malloc(sizeof(*sys));
    if (!sys) {
        vlc_epg_Delete(epg);
        return VLC_EGENERIC;
    }
    sys->epg = epg;
    sys->obj = VLC_OBJECT(vout);
    sys->time = epg_time;
    sys->art = input_item_GetMeta( input, vlc_meta_ArtworkURL );
    if( !sys->art )
        sys->art = GetDefaultArtUri();

    subpicture_updater_t updater = {
        .pf_validate = OSDEpgValidate,
        .pf_update = OSDEpgUpdate,
        .pf_destroy = OSDEpgDestroy,
        .p_sys = sys
    };

    const vlc_tick_t now = vlc_tick_now();
    subpicture_t *subpic = subpicture_New(&updater);
    if (!subpic) {
        vlc_epg_Delete(sys->epg);
        free(sys);
        return VLC_EGENERIC;
    }

    subpic->i_channel = VOUT_SPU_CHANNEL_OSD;
    subpic->i_start = now;
    subpic->i_stop = now + VLC_TICK_FROM_SEC(3);
    subpic->b_ephemer = 1;
    subpic->b_absolute = 0;
    subpic->b_fade = 1;
    subpic->b_subtitle = 0;

    vout_PutSubpicture(vout, subpic);

    return VLC_SUCCESS;
}
