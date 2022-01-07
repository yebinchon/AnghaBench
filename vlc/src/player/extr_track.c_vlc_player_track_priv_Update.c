
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_player_track {char* name; int fmt; } ;
struct vlc_player_track_priv {struct vlc_player_track t; } ;
typedef int es_format_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int es_format_Clean (int *) ;
 int es_format_Copy (int *,int const*) ;
 int free (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;

int
vlc_player_track_priv_Update(struct vlc_player_track_priv *trackpriv,
                             const char *name, const es_format_t *fmt)
{
    struct vlc_player_track *track = &trackpriv->t;

    if (strcmp(name, track->name) != 0)
    {
        char *dup = strdup(name);
        if (!dup)
            return VLC_ENOMEM;
        free((char *)track->name);
        track->name = dup;
    }

    es_format_t fmtdup;
    int ret = es_format_Copy(&fmtdup, fmt);
    if (ret != VLC_SUCCESS)
        return ret;

    es_format_Clean(&track->fmt);
    track->fmt = fmtdup;
    return VLC_SUCCESS;
}
