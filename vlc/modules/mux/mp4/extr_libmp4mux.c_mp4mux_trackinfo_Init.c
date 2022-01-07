
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {unsigned int i_track_id; int fmt; int i_timescale; } ;
typedef TYPE_1__ mp4mux_trackinfo_t ;


 int es_format_Init (int *,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static bool mp4mux_trackinfo_Init(mp4mux_trackinfo_t *p_stream, unsigned i_id,
                                  uint32_t i_timescale)
{
    memset(p_stream, 0, sizeof(*p_stream));
    p_stream->i_track_id = i_id;

    p_stream->i_timescale = i_timescale;
    es_format_Init(&p_stream->fmt, 0, 0);

    return 1;
}
