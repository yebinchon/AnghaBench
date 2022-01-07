
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {unsigned int i_track_id; int fmt; int i_timescale; } ;
typedef TYPE_1__ mp4mux_trackinfo_t ;
struct TYPE_15__ {int tracks; } ;
typedef TYPE_2__ mp4mux_handle_t ;
struct TYPE_16__ {int i_codec; int i_cat; } ;
typedef TYPE_3__ es_format_t ;


 int es_format_Copy (int *,TYPE_3__ const*) ;
 int es_format_Init (int *,int ,int ) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int mp4mux_AddExtraBrandForFormat (TYPE_2__*,TYPE_3__ const*) ;
 int mp4mux_trackinfo_Init (TYPE_1__*,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int vlc_array_append (int *,TYPE_1__*) ;

mp4mux_trackinfo_t * mp4mux_track_Add(mp4mux_handle_t *h, unsigned id,
                                      const es_format_t *fmt, uint32_t timescale)
{
    if(unlikely(id == 0))
        return ((void*)0);
    mp4mux_trackinfo_t *t = malloc(sizeof(*t));
    if(!t || !mp4mux_trackinfo_Init(t, 0, 0))
    {
        free(t);
        return ((void*)0);
    }
    t->i_track_id = id;
    t->i_timescale = timescale;
    es_format_Init(&t->fmt, fmt->i_cat, fmt->i_codec);
    es_format_Copy(&t->fmt, fmt);
    vlc_array_append(&h->tracks, t);
    mp4mux_AddExtraBrandForFormat(h, fmt);
    return t;
}
