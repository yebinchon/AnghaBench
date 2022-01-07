
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_2__ {int p_sem; scalar_t__ b_mux; } ;
typedef TYPE_1__ preparse_data_t ;
typedef int input_item_t ;


 int VLC_UNUSED (int *) ;
 int vlc_sem_post (int ) ;

__attribute__((used)) static void preparse_on_media_meta_changed(vlc_player_t *player,
                                           input_item_t *media, void *data)
{
    VLC_UNUSED(player); VLC_UNUSED(media);
    preparse_data_t *p_pre = data;

    if (p_pre->b_mux)
        vlc_sem_post(p_pre->p_sem);
}
