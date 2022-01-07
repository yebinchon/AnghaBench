
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_3__ {int resource; } ;
typedef TYPE_1__ vlc_player_t ;


 int VOUT_SPU_CHANNEL_OSD ;
 int VOUT_SPU_CHANNEL_OSD_HSLIDER ;
 int input_resource_HoldVouts (int ,int ***,size_t*) ;
 int vout_FlushSubpictureChannel (int *,int ) ;

__attribute__((used)) static vout_thread_t **
vlc_player_osd_HoldAll(vlc_player_t *player, size_t *count)
{
    vout_thread_t **vouts;
    input_resource_HoldVouts(player->resource, &vouts, count);

    for (size_t i = 0; i < *count; ++i)
    {
        vout_FlushSubpictureChannel(vouts[i], VOUT_SPU_CHANNEL_OSD);
        vout_FlushSubpictureChannel(vouts[i], VOUT_SPU_CHANNEL_OSD_HSLIDER);
        vout_FlushSubpictureChannel(vouts[i], VOUT_SPU_CHANNEL_OSD_HSLIDER);
    }
    return vouts;
}
