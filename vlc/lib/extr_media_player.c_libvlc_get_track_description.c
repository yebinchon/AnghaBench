
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_track {int name; int es_id; } ;
struct TYPE_7__ {struct TYPE_7__* p_next; int psz_name; int i_id; } ;
typedef TYPE_1__ libvlc_track_description_t ;
struct TYPE_8__ {int * player; } ;
typedef TYPE_2__ libvlc_media_player_t ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 int free (TYPE_1__*) ;
 int libvlc_printerr (char*) ;
 TYPE_1__* malloc (int) ;
 int strdup (int ) ;
 scalar_t__ unlikely (int) ;
 int vlc_es_id_GetInputId (int ) ;
 struct vlc_player_track* vlc_player_GetTrackAt (int *,int,size_t) ;
 size_t vlc_player_GetTrackCount (int *,int) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;

libvlc_track_description_t *
        libvlc_get_track_description( libvlc_media_player_t *p_mi,
                                      enum es_format_category_e cat )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    libvlc_track_description_t *ret, **pp = &ret;

    size_t count = vlc_player_GetTrackCount(player, cat);
    for (size_t i = 0; i < count; i++)
    {
        libvlc_track_description_t *tr = malloc(sizeof (*tr));
        if (unlikely(tr == ((void*)0)))
        {
            libvlc_printerr("Not enough memory");
            continue;
        }

        const struct vlc_player_track *track =
            vlc_player_GetTrackAt(player, cat, i);

        *pp = tr;
        tr->i_id = vlc_es_id_GetInputId(track->es_id);
        tr->psz_name = strdup(track->name);
        if (unlikely(!tr->psz_name))
        {
            free(tr);
            continue;
        }
        pp = &tr->p_next;
    }

    *pp = ((void*)0);

    vlc_player_Unlock(player);
    return ret;
}
