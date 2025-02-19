
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_player_t ;
typedef int vlc_es_id_t ;
struct vlc_player_track {int * es_id; scalar_t__ selected; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_5__ {int spu_channel_order; } ;
typedef TYPE_2__ intf_sys_t ;
typedef enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 int SPU_ES ;
 scalar_t__ VLC_VOUT_ORDER_PRIMARY ;
 int assert (struct vlc_player_track const*) ;
 scalar_t__ vlc_player_GetEsIdVout (int *,int *,int*) ;
 struct vlc_player_track* vlc_player_GetTrackAt (int *,int const,size_t) ;
 size_t vlc_player_GetTrackCount (int *,int const) ;
 int vlc_player_SelectEsIdList (int *,int const,int **) ;
 int vlc_player_SelectNextTrack (int *,int const) ;
 int vlc_player_SelectPrevTrack (int *,int const) ;

__attribute__((used)) static void CycleSecondarySubtitles(intf_thread_t *intf, vlc_player_t *player,
                                    bool next)
{
    intf_sys_t *sys = intf->p_sys;
    const enum es_format_category_e cat = SPU_ES;
    size_t count = vlc_player_GetTrackCount(player, cat);
    if (!count)
        return;

    vlc_es_id_t *cycle_id = ((void*)0);
    vlc_es_id_t *keep_id = ((void*)0);


    size_t selected_count = 0;
    for (size_t i = 0; i < count; ++i)
    {
        const struct vlc_player_track *track =
            vlc_player_GetTrackAt(player, cat, i);
        assert(track);

        if (track->selected)
        {
            enum vlc_vout_order order;
            if (vlc_player_GetEsIdVout(player, track->es_id, &order)
             && order == sys->spu_channel_order)
                cycle_id = track->es_id;
            else
                keep_id = track->es_id;
            ++selected_count;
        }
    }

    if ((sys->spu_channel_order == VLC_VOUT_ORDER_PRIMARY
      && selected_count == 1) || selected_count == 0)
    {

        if (next)
            vlc_player_SelectNextTrack(player, cat);
        else
            vlc_player_SelectPrevTrack(player, cat);
    }
    else
    {


        size_t index = next ? 0 : count - 1;
        for (size_t i = 0; i < count; ++i)
        {
            const struct vlc_player_track *track =
                vlc_player_GetTrackAt(player, cat, i);
            assert(track);

            if (track->es_id == cycle_id)
            {
                index = i;
                break;
            }
        }


        while (1)
        {
            const struct vlc_player_track *track =
                vlc_player_GetTrackAt(player, cat, index);

            if (!track->selected)
            {
                cycle_id = track->es_id;
                break;
            }

            else if ((next && index + 1 == count) || (!next && index == 0))
            {
                cycle_id = ((void*)0);
                break;
            }
            else
                index = index + (next ? 1 : -1);
        }


        if ( !keep_id )
        {
            keep_id = cycle_id;
            cycle_id = ((void*)0);
        }

        vlc_es_id_t *esIds[] = { keep_id, cycle_id, ((void*)0) };
        vlc_player_SelectEsIdList(player, cat, esIds);
    }
}
