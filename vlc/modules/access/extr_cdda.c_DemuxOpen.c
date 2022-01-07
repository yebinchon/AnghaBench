
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_15__ {int i_last_track; TYPE_1__* p_sectors; } ;
typedef TYPE_3__ vcddev_toc_t ;
typedef int vcddev_t ;
struct TYPE_14__ {int i_rate; int i_channels; } ;
struct TYPE_16__ {TYPE_2__ audio; } ;
typedef TYPE_4__ es_format_t ;
struct TYPE_17__ {int pf_control; int pf_demux; int * out; TYPE_6__* p_sys; } ;
typedef TYPE_5__ demux_t ;
struct TYPE_18__ {void* start; unsigned int length; scalar_t__ position; int pts; int es; int * vcddev; } ;
typedef TYPE_6__ demux_sys_t ;
struct TYPE_13__ {int i_lba; } ;


 int AUDIO_ES ;
 scalar_t__ CD_ROM_XA_INTERVAL ;
 int Demux ;
 int DemuxControl ;
 int TOC_GetAudioRange (TYPE_3__*,int*,int*) ;
 int VLC_CODEC_S16L ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_TICK_0 ;
 int date_Init (int *,int,int) ;
 int date_Set (int *,int ) ;
 int es_format_Init (TYPE_4__*,int ,int ) ;
 int es_out_Add (int *,TYPE_4__*) ;
 int ioctl_Close (int *,int *) ;
 TYPE_3__* ioctl_GetTOC (int *,int *,int) ;
 int msg_Err (int *,char*,unsigned int,int) ;
 scalar_t__ unlikely (int ) ;
 void* var_InheritInteger (int *,char*) ;
 int vcddev_toc_Free (TYPE_3__*) ;
 TYPE_6__* vlc_obj_malloc (int *,int) ;

__attribute__((used)) static int DemuxOpen(vlc_object_t *obj, vcddev_t *dev, unsigned track)
{
    demux_t *demux = (demux_t *)obj;

    if (demux->out == ((void*)0))
        goto error;

    demux_sys_t *sys = vlc_obj_malloc(obj, sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        goto error;

    demux->p_sys = sys;
    sys->vcddev = dev;
    sys->start = var_InheritInteger(obj, "cdda-first-sector");
    sys->length = var_InheritInteger(obj, "cdda-last-sector") - sys->start;


    if (sys->start == (unsigned)-1 || sys->length == (unsigned)-1)
    {
        vcddev_toc_t *p_toc = ioctl_GetTOC(obj, dev, 1);
        if(p_toc == ((void*)0))
            goto error;

        int i_cdda_tracks, i_cdda_first, i_cdda_last;
        i_cdda_tracks = TOC_GetAudioRange(p_toc, &i_cdda_first, &i_cdda_last);

        if (track == 0 || track > (unsigned) i_cdda_tracks)
        {
            msg_Err(obj, "invalid track number: %u/%i", track, i_cdda_tracks);
            vcddev_toc_Free(p_toc);
            goto error;
        }

        track--;
        int i_first_sector = p_toc->p_sectors[track].i_lba;
        int i_last_sector = p_toc->p_sectors[track + 1].i_lba;
        if(i_cdda_first + track == (unsigned) i_cdda_last && p_toc->i_last_track > i_cdda_last)
            i_last_sector -= CD_ROM_XA_INTERVAL;

        sys->start = i_first_sector;
        sys->length = i_last_sector - i_first_sector;
        vcddev_toc_Free(p_toc);
    }

    es_format_t fmt;

    es_format_Init(&fmt, AUDIO_ES, VLC_CODEC_S16L);
    fmt.audio.i_rate = 44100;
    fmt.audio.i_channels = 2;
    sys->es = es_out_Add(demux->out, &fmt);

    date_Init(&sys->pts, 44100, 1);
    date_Set(&sys->pts, VLC_TICK_0);

    sys->position = 0;
    demux->pf_demux = Demux;
    demux->pf_control = DemuxControl;
    return VLC_SUCCESS;

error:
    ioctl_Close(obj, dev);
    return VLC_EGENERIC;
}
