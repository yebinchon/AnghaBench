
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_19__ {int i_frame_rate; int i_frame_rate_base; int i_chroma; } ;
struct TYPE_20__ {TYPE_1__ video; void* i_group; void* i_id; int i_codec; } ;
typedef TYPE_2__ es_format_t ;
struct TYPE_21__ {TYPE_4__* p_sys; int pf_control; int pf_demux; int out; int s; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_22__ {int pts; int pts_next; scalar_t__ is_realtime; int pts_offset; int duration; int es; int * data; } ;
typedef TYPE_4__ demux_sys_t ;
typedef int block_t ;


 int Control ;
 int * Decode (TYPE_3__*,TYPE_2__*,scalar_t__,int *) ;
 int Demux ;
 scalar_t__ Detect (int ) ;
 int * Load (TYPE_3__*) ;
 int VIDEO_ES ;
 scalar_t__ VLC_CODEC_MXPEG ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_0 ;
 int VLC_TICK_INVALID ;
 int block_Release (int *) ;
 int date_Init (int *,int,int) ;
 int date_Set (int *,int ) ;
 int es_format_Clean (TYPE_2__*) ;
 int es_format_Init (TYPE_2__*,int ,scalar_t__) ;
 int es_out_Add (int ,TYPE_2__*) ;
 int free (char*) ;
 TYPE_4__* malloc (int) ;
 int msg_Dbg (TYPE_3__*,char*,int ) ;
 int msg_Err (TYPE_3__*,char*) ;
 scalar_t__ var_InheritBool (TYPE_3__*,char*) ;
 int var_InheritFloat (TYPE_3__*,char*) ;
 void* var_InheritInteger (TYPE_3__*,char*) ;
 char* var_InheritString (TYPE_3__*,char*) ;
 scalar_t__ var_InheritURational (TYPE_3__*,int*,int*,char*) ;
 scalar_t__ vlc_fourcc_GetCodecFromString (int ,char*) ;
 int vlc_fourcc_GetDescription (int ,scalar_t__) ;
 int vlc_tick_from_sec (int ) ;
 int vlc_tick_now () ;

__attribute__((used)) static int Open(vlc_object_t *object)
{
    demux_t *demux = (demux_t*)object;


    vlc_fourcc_t codec = Detect(demux->s);
    if (codec == 0)
        return VLC_EGENERIC;

    msg_Dbg(demux, "Detected image: %s",
            vlc_fourcc_GetDescription(VIDEO_ES, codec));

    if (codec == VLC_CODEC_MXPEG)
        return VLC_EGENERIC;


    es_format_t fmt;
    es_format_Init(&fmt, VIDEO_ES, codec);
    fmt.video.i_chroma = fmt.i_codec;

    block_t *data = Load(demux);
    if (data && var_InheritBool(demux, "image-decode")) {
        char *string = var_InheritString(demux, "image-chroma");
        vlc_fourcc_t chroma = vlc_fourcc_GetCodecFromString(VIDEO_ES, string);
        free(string);

        data = Decode(demux, &fmt, chroma, data);
    }
    fmt.i_id = var_InheritInteger(demux, "image-id");
    fmt.i_group = var_InheritInteger(demux, "image-group");
    if (var_InheritURational(demux,
                             &fmt.video.i_frame_rate,
                             &fmt.video.i_frame_rate_base,
                             "image-fps") ||
        fmt.video.i_frame_rate <= 0 || fmt.video.i_frame_rate_base <= 0) {
        msg_Err(demux, "Invalid frame rate, using 10/1 instead");
        fmt.video.i_frame_rate = 10;
        fmt.video.i_frame_rate_base = 1;
    }



    if (!data)
        msg_Err(demux, "Failed to load the image");


    demux_sys_t *sys = malloc(sizeof(*sys));
    if (!sys) {
        if (data)
            block_Release(data);
        es_format_Clean(&fmt);
        return VLC_ENOMEM;
    }

    sys->data = data;
    sys->es = es_out_Add(demux->out, &fmt);
    sys->duration = vlc_tick_from_sec( var_InheritFloat(demux, "image-duration") );
    sys->is_realtime = var_InheritBool(demux, "image-realtime");
    sys->pts_offset = sys->is_realtime ? vlc_tick_now() : 0;
    sys->pts_next = VLC_TICK_INVALID;
    date_Init(&sys->pts, fmt.video.i_frame_rate, fmt.video.i_frame_rate_base);
    date_Set(&sys->pts, VLC_TICK_0);

    es_format_Clean(&fmt);

    demux->pf_demux = Demux;
    demux->pf_control = Control;
    demux->p_sys = sys;
    return VLC_SUCCESS;
}
