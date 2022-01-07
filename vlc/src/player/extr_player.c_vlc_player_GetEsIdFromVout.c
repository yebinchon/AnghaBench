
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_5__ {size_t size; struct vlc_player_track_priv** data; } ;
typedef TYPE_2__ vlc_player_track_vector ;
typedef int vlc_player_t ;
typedef int vlc_es_id_t ;
struct TYPE_4__ {int * es_id; } ;
struct vlc_player_track_priv {TYPE_1__ t; int * vout; } ;
struct vlc_player_input {int dummy; } ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 size_t ARRAY_SIZE (int const*) ;



 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 TYPE_2__* vlc_player_input_GetTrackVector (struct vlc_player_input*,int) ;

vlc_es_id_t *
vlc_player_GetEsIdFromVout(vlc_player_t *player, vout_thread_t *vout)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    if (!input)
        return ((void*)0);

    static const enum es_format_category_e cats[] = {
        128, 129, 130
    };
    for (size_t i = 0; i < ARRAY_SIZE(cats); ++i)
    {
        enum es_format_category_e cat = cats[i];
        vlc_player_track_vector *vec =
            vlc_player_input_GetTrackVector(input, cat);
        for (size_t j = 0; j < vec->size; ++j)
        {
            struct vlc_player_track_priv *trackpriv = vec->data[j];
            if (trackpriv->vout == vout)
                return trackpriv->t.es_id;
        }
    }
    return ((void*)0);
}
