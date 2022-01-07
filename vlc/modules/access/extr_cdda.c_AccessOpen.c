
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vcddev_t ;
struct TYPE_4__ {int pf_control; int * pf_seek; int pf_readdir; int * pf_block; int * pf_read; TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {scalar_t__ i_cdda_tracks; int * p_toc; int * cddb; int * mbrecord; int i_cdda_last; int i_cdda_first; scalar_t__ cdtextc; int * cdtextv; int * vcddev; } ;
typedef TYPE_2__ access_sys_t ;


 int AccessControl ;
 int * GetCDDBInfo (int *,int *) ;
 int * GetMusicbrainzInfo (int *,int *,scalar_t__,int ,int ) ;
 int ReadDir ;
 scalar_t__ TOC_GetAudioRange (int *,int *,int *) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int ioctl_Close (int *,int *) ;
 scalar_t__ ioctl_GetCdText (int *,int *,int **,scalar_t__*) ;
 int * ioctl_GetTOC (int *,int *,int) ;
 int msg_Dbg (int *,char*) ;
 int msg_Err (int *,char*) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ var_InheritBool (int *,char*) ;
 int vcddev_toc_Free (int *) ;
 TYPE_2__* vlc_obj_malloc (int *,int) ;

__attribute__((used)) static int AccessOpen(vlc_object_t *obj, vcddev_t *dev)
{
    stream_t *access = (stream_t *)obj;

    access_sys_t *sys = vlc_obj_malloc(obj, sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
    {
        ioctl_Close(obj, dev);
        return VLC_ENOMEM;
    }

    sys->vcddev = dev;
    sys->p_toc = ioctl_GetTOC(obj, dev, 1);
    if (sys->p_toc == ((void*)0))
    {
        msg_Err(obj, "cannot count tracks");
        goto error;
    }

    sys->i_cdda_tracks = TOC_GetAudioRange(sys->p_toc, &sys->i_cdda_first, &sys->i_cdda_last);
    if (sys->i_cdda_tracks == 0)
    {
        msg_Err(obj, "no audio tracks found");
        vcddev_toc_Free(sys->p_toc);
        goto error;
    }

    if (ioctl_GetCdText(obj, dev, &sys->cdtextv, &sys->cdtextc))
    {
        msg_Dbg(obj, "CD-TEXT information missing");
        sys->cdtextv = ((void*)0);
        sys->cdtextc = 0;
    }

    sys->mbrecord = ((void*)0);




    if(var_InheritBool(obj, "metadata-network-access"))
    {
        sys->mbrecord = GetMusicbrainzInfo(obj, sys->p_toc, sys->i_cdda_tracks,
                                           sys->i_cdda_first, sys->i_cdda_last );




    }
    else msg_Dbg(obj, "album art policy set to manual: not fetching");

    access->p_sys = sys;
    access->pf_read = ((void*)0);
    access->pf_block = ((void*)0);
    access->pf_readdir = ReadDir;
    access->pf_seek = ((void*)0);
    access->pf_control = AccessControl;
    return VLC_SUCCESS;

error:
    ioctl_Close(obj, dev);
    return VLC_EGENERIC;
}
