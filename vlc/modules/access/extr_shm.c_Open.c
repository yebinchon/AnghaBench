
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_17__ {int i_bits_per_pixel; int i_sar_num; int i_sar_den; int i_frame_rate; int i_frame_rate_base; int i_visible_width; int i_width; int i_visible_height; int i_height; int i_chroma; } ;
struct TYPE_18__ {TYPE_2__ video; } ;
typedef TYPE_3__ es_format_t ;
struct TYPE_19__ {int pf_control; int * pf_demux; TYPE_5__* p_sys; int * out; } ;
typedef TYPE_4__ demux_t ;
struct TYPE_16__ {int length; void* addr; } ;
struct TYPE_20__ {int fd; int (* detach ) (TYPE_5__*) ;int timer; int es; TYPE_1__ mem; } ;
typedef TYPE_5__ demux_sys_t ;


 scalar_t__ CLOCK_FREQ ;
 int CloseFile (TYPE_5__*) ;
 int CloseIPC (TYPE_5__*) ;
 int Control ;
 void DemuxFile (void*) ;
 void DemuxIPC (void*) ;
 int IPC_PRIVATE ;
 int O_RDONLY ;
 int SHM_RDONLY ;
 int VIDEO_ES ;
 int VLC_CODEC_RGB15 ;
 int VLC_CODEC_RGB16 ;
 int VLC_CODEC_RGB24 ;
 int VLC_CODEC_RGB32 ;
 int VLC_CODEC_RGB8 ;
 int VLC_CODEC_XWD ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int errno ;
 int es_format_Init (TYPE_3__*,int ,int ) ;
 int es_out_Add (int *,TYPE_3__*) ;
 int free (char*) ;
 int llroundf (float) ;
 int msg_Err (TYPE_4__*,char*,...) ;
 void* shmat (int,int *,int ) ;
 int stub1 (TYPE_5__*) ;
 scalar_t__ unlikely (int ) ;
 float var_InheritFloat (int *,char*) ;
 int var_InheritInteger (TYPE_4__*,char*) ;
 char* var_InheritString (TYPE_4__*,char*) ;
 TYPE_5__* vlc_obj_malloc (int *,int) ;
 int vlc_open (char*,int ) ;
 int vlc_strerror_c (int ) ;
 scalar_t__ vlc_timer_create (int *,void (*) (void*),TYPE_4__*) ;
 int vlc_timer_schedule_asap (int ,int ) ;

__attribute__((used)) static int Open (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    if (demux->out == ((void*)0))
        return VLC_EGENERIC;

    demux_sys_t *sys = vlc_obj_malloc(obj, sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    uint32_t chroma;
    uint16_t width = 0, height = 0;
    uint8_t bpp;
    switch (var_InheritInteger (demux, "shm-depth"))
    {
        case 32:
            chroma = VLC_CODEC_RGB32; bpp = 32;
            break;
        case 24:
            chroma = VLC_CODEC_RGB24; bpp = 24;
            break;
        case 16:
            chroma = VLC_CODEC_RGB16; bpp = 16;
            break;
        case 15:
            chroma = VLC_CODEC_RGB15; bpp = 16;
            break;
        case 8:
            chroma = VLC_CODEC_RGB8; bpp = 8;
            break;
        case 0:
            chroma = VLC_CODEC_XWD; bpp = 0;
            break;
        default:
            return VLC_EGENERIC;
    }
    if (bpp != 0)
    {
        width = var_InheritInteger (demux, "shm-width");
        height = var_InheritInteger (demux, "shm-height");
    }

    static void (*Demux) (void *);

    char *path = var_InheritString (demux, "shm-file");
    if (path != ((void*)0))
    {
        sys->fd = vlc_open (path, O_RDONLY);
        if (sys->fd == -1)
            msg_Err (demux, "cannot open file %s: %s", path,
                     vlc_strerror_c(errno));
        free (path);
        if (sys->fd == -1)
            return VLC_EGENERIC;

        sys->detach = CloseFile;
        Demux = DemuxFile;
    }
    else
    {
        goto error;

    }


    float rate = var_InheritFloat (obj, "shm-fps");
    if (rate <= 0.f)
        goto error;

    vlc_tick_t interval = llroundf((float)CLOCK_FREQ / rate);
    if (!interval)
        goto error;

    es_format_t fmt;
    es_format_Init (&fmt, VIDEO_ES, chroma);
    fmt.video.i_chroma = chroma;
    fmt.video.i_bits_per_pixel = bpp;
    fmt.video.i_sar_num = fmt.video.i_sar_den = 1;
    fmt.video.i_frame_rate = 1000 * rate;
    fmt.video.i_frame_rate_base = 1000;
    fmt.video.i_visible_width = fmt.video.i_width = width;
    fmt.video.i_visible_height = fmt.video.i_height = height;

    sys->es = es_out_Add (demux->out, &fmt);


    if (vlc_timer_create (&sys->timer, Demux, demux))
        goto error;
    vlc_timer_schedule_asap (sys->timer, interval);

    demux->p_sys = sys;
    demux->pf_demux = ((void*)0);
    demux->pf_control = Control;
    return VLC_SUCCESS;

error:
    sys->detach (sys);
    return VLC_EGENERIC;
}
