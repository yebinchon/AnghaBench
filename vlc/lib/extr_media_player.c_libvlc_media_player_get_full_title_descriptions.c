
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_player_title_list ;
typedef int vlc_player_t ;
struct vlc_player_title {scalar_t__ name; int flags; int length; } ;
struct TYPE_9__ {int * psz_name; int i_flags; int i_duration; } ;
typedef TYPE_1__ libvlc_title_description_t ;
struct TYPE_10__ {int * player; } ;
typedef TYPE_2__ libvlc_media_player_t ;


 int MS_FROM_VLC_TICK (int ) ;
 int assert (TYPE_2__*) ;
 int libvlc_title_descriptions_release (TYPE_1__**,size_t) ;
 TYPE_1__* malloc (int) ;
 int * strdup (scalar_t__) ;
 TYPE_1__** vlc_alloc (size_t,int) ;
 int * vlc_player_GetTitleList (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 struct vlc_player_title* vlc_player_title_list_GetAt (int *,size_t) ;
 size_t vlc_player_title_list_GetCount (int *) ;

int libvlc_media_player_get_full_title_descriptions( libvlc_media_player_t *p_mi,
                                                     libvlc_title_description_t *** pp_titles )
{
    assert( p_mi );

    int ret = -1;

    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    vlc_player_title_list *titles = vlc_player_GetTitleList(player);
    if (!titles)
        goto end;

    size_t count = vlc_player_title_list_GetCount(titles);

    libvlc_title_description_t **descs = vlc_alloc(count, sizeof(*descs));
    if (count > 0 && !descs)
        goto end;

    for (size_t i = 0; i < count; i++)
    {
        const struct vlc_player_title *title =
            vlc_player_title_list_GetAt(titles, i);
        libvlc_title_description_t *desc = malloc(sizeof(*desc));
        if (!desc)
        {
            libvlc_title_descriptions_release(descs, i);
            goto end;
        }

        descs[i] = desc;


        desc->i_duration = MS_FROM_VLC_TICK(title->length);
        desc->i_flags = title->flags;
        desc->psz_name = title->name ? strdup(title->name) : ((void*)0);
    }

    ret = count;
    *pp_titles = descs;

end:
    vlc_player_Unlock(player);
    return ret;
}
