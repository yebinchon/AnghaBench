
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_23__ {int psz_name; int i_length; } ;
typedef TYPE_2__ input_title_t ;
struct TYPE_24__ {int length; scalar_t__* song; } ;
typedef TYPE_3__ gme_info_t ;
struct TYPE_22__ {int i_rate; int i_bytes_per_frame; int i_frame_length; int i_channels; int i_blockalign; int i_bitspersample; } ;
struct TYPE_25__ {int i_bitrate; TYPE_1__ audio; } ;
typedef TYPE_4__ es_format_t ;
struct TYPE_26__ {TYPE_6__* p_sys; int pf_control; int pf_demux; int out; TYPE_7__* s; } ;
typedef TYPE_5__ demux_t ;
struct TYPE_27__ {unsigned int titlec; int title_changed; int * emu; TYPE_2__** titlev; int pts; int es; scalar_t__ track_id; } ;
typedef TYPE_6__ demux_sys_t ;
struct TYPE_28__ {scalar_t__ i_buffer; } ;
typedef TYPE_7__ block_t ;


 int AUDIO_ES ;
 int Control ;
 int Demux ;
 scalar_t__ LONG_MAX ;
 int RATE ;
 int ReaderBlock ;
 int ReaderStream ;
 int VLC_CODEC_S16N ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_0 ;
 int VLC_TICK_FROM_MS (int) ;
 int block_Release (TYPE_7__*) ;
 int date_Init (int *,int,int) ;
 int date_Set (int *,int ) ;
 int es_format_Init (TYPE_4__*,int ,int ) ;
 int es_out_Add (int ,TYPE_4__*) ;
 int free (TYPE_6__*) ;
 int gme_free_info (TYPE_3__*) ;
 int gme_identify_extension (char const*) ;
 char* gme_identify_header (int const*) ;
 int gme_load_custom (int *,int ,scalar_t__,TYPE_7__*) ;
 int * gme_new_emu (int ,int) ;
 int gme_start_track (int *,scalar_t__) ;
 unsigned int gme_track_count (int *) ;
 scalar_t__ gme_track_info (int *,TYPE_3__**,unsigned int) ;
 TYPE_6__* malloc (int) ;
 int msg_Dbg (int *,char*,...) ;
 int strdup (scalar_t__*) ;
 scalar_t__ unlikely (int ) ;
 TYPE_2__** vlc_alloc (unsigned int,int) ;
 TYPE_2__* vlc_input_title_New () ;
 TYPE_7__* vlc_stream_Block (TYPE_7__*,int) ;
 scalar_t__ vlc_stream_GetSize (TYPE_7__*,scalar_t__*) ;
 int vlc_stream_Peek (TYPE_7__*,int const**,int) ;

__attribute__((used)) static int Open (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    uint64_t size;

    if (vlc_stream_GetSize(demux->s, &size))
        return VLC_EGENERIC;
    if (size > LONG_MAX )
        return VLC_EGENERIC;


    const uint8_t *peek;
    if (vlc_stream_Peek (demux->s, &peek, 4) < 4)
        return VLC_EGENERIC;

    const char *type = gme_identify_header (peek);
    if (!*type)
        return VLC_EGENERIC;
    msg_Dbg (obj, "detected file type %s", type);

    block_t *data = ((void*)0);
    if (size <= 0)
    {
        data = vlc_stream_Block (demux->s, 1 << 24);
        if (data == ((void*)0))
            return VLC_EGENERIC;
    }


    demux_sys_t *sys = malloc (sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    sys->emu = gme_new_emu (gme_identify_extension (type), RATE);
    if (sys->emu == ((void*)0))
    {
        free (sys);
        return VLC_ENOMEM;
    }
    if (data)
    {
        gme_load_custom (sys->emu, ReaderBlock, data->i_buffer, data);
        block_Release(data);
    }
    else
    {
        gme_load_custom (sys->emu, ReaderStream, size, demux->s);
    }
    gme_start_track (sys->emu, sys->track_id = 0);

    es_format_t fmt;
    es_format_Init (&fmt, AUDIO_ES, VLC_CODEC_S16N);
    fmt.audio.i_rate = RATE;
    fmt.audio.i_bytes_per_frame = 4;
    fmt.audio.i_frame_length = 4;
    fmt.audio.i_channels = 2;
    fmt.audio.i_blockalign = 4;
    fmt.audio.i_bitspersample = 16;
    fmt.i_bitrate = RATE * 4;

    sys->es = es_out_Add (demux->out, &fmt);
    date_Init (&sys->pts, RATE, 1);
    date_Set(&sys->pts, VLC_TICK_0);


    unsigned n = gme_track_count (sys->emu);
    sys->titlev = vlc_alloc (n, sizeof (*sys->titlev));
    if (unlikely(sys->titlev == ((void*)0)))
        n = 0;
    sys->titlec = n;
    for (unsigned i = 0; i < n; i++)
    {
         input_title_t *title = vlc_input_title_New ();
         sys->titlev[i] = title;
         if (unlikely(title == ((void*)0)))
             continue;

         gme_info_t *infos;
         if (gme_track_info (sys->emu, &infos, i))
             continue;
         msg_Dbg (obj, "track %u: %s %d ms", i, infos->song, infos->length);
         if (infos->length != -1)
             title->i_length = VLC_TICK_FROM_MS(infos->length);
         if (infos->song[0])
             title->psz_name = strdup (infos->song);
         gme_free_info (infos);
    }
    sys->title_changed = 0;


    demux->pf_demux = Demux;
    demux->pf_control = Control;
    demux->p_sys = sys;
    return VLC_SUCCESS;
}
