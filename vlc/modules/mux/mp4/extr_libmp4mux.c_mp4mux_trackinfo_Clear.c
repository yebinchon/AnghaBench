
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_edits; int samples; int fmt; } ;
typedef TYPE_1__ mp4mux_trackinfo_t ;


 int es_format_Clean (int *) ;
 int free (int ) ;
 int mp4mux_track_SetSamplePriv (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void mp4mux_trackinfo_Clear(mp4mux_trackinfo_t *p_stream)
{
    es_format_Clean(&p_stream->fmt);
    mp4mux_track_SetSamplePriv(p_stream, ((void*)0), 0);
    free(p_stream->samples);
    free(p_stream->p_edits);
}
