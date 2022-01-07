
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef char uint8_t ;
struct TYPE_12__ {int i_visible_width; int i_visible_height; } ;
struct TYPE_10__ {int i_codec; char* p_extra; size_t i_extra; TYPE_5__ video; } ;
struct TYPE_9__ {size_t i_data; char* p_data; } ;
struct TYPE_11__ {TYPE_2__ fmt; TYPE_1__ sample_priv; } ;
typedef TYPE_3__ mp4mux_trackinfo_t ;
typedef int bo_t ;


 int GetAvcCTag (char const*,size_t) ;
 int GetClli (TYPE_5__*) ;
 int GetColrBox (TYPE_5__*,int) ;
 int GetD263Tag () ;
 int GetESDS (TYPE_3__*) ;
 int GetHvcCTag (char const*,size_t,int) ;
 int GetMdcv (TYPE_5__*) ;
 int GetSVQ3Tag (char const*,size_t) ;
 int GetxxxxTag (char const*,size_t,char*) ;
 int VLC_UNUSED (int) ;
 int bo_add_16be (int *,int) ;
 int bo_add_32be (int *,int) ;
 int bo_add_8 (int *,int ) ;
 int bo_add_mem (int *,int,char*) ;
 int box_gather (int *,int ) ;
 int * box_new (char*) ;
 int memcpy (char*,char*,int) ;
 int vlc_fourcc_to_char (int,char*) ;

__attribute__((used)) static bo_t *GetVideBox(vlc_object_t *p_obj, mp4mux_trackinfo_t *p_track, bool b_mov)
{
    VLC_UNUSED(p_obj);
    VLC_UNUSED(b_mov);

    char fcc[4];

    switch(p_track->fmt.i_codec)
    {
    case 134:
    case 133: memcpy(fcc, "mp4v", 4); break;
    case 135: memcpy(fcc, "mjpa", 4); break;
    case 132: memcpy(fcc, "SVQ1", 4); break;
    case 131: memcpy(fcc, "SVQ3", 4); break;
    case 138: memcpy(fcc, "s263", 4); break;
    case 137: memcpy(fcc, "avc1", 4); break;
    case 130 : memcpy(fcc, "vc-1", 4); break;


    case 136: memcpy(fcc, "hev1", 4); break;
    case 128: memcpy(fcc, "yv12", 4); break;
    case 129: memcpy(fcc, "yuy2", 4); break;
    default:
        vlc_fourcc_to_char(p_track->fmt.i_codec, fcc);
        break;
    }

    bo_t *vide = box_new(fcc);
    if(!vide)
        return ((void*)0);
    for (int i = 0; i < 6; i++)
        bo_add_8(vide, 0);
    bo_add_16be(vide, 1);

    bo_add_16be(vide, 0);
    bo_add_16be(vide, 0);
    for (int i = 0; i < 3; i++)
        bo_add_32be(vide, 0);

    bo_add_16be(vide, p_track->fmt.video.i_visible_width);
    bo_add_16be(vide, p_track->fmt.video.i_visible_height);

    bo_add_32be(vide, 0x00480000);
    bo_add_32be(vide, 0x00480000);

    bo_add_32be(vide, 0);
    bo_add_16be(vide, 1);


    uint8_t compressor_name[32] = {0};
    switch (p_track->fmt.i_codec)
    {
        case 139:
            memcpy(compressor_name, "\012AOM Coding", 11);
            break;
        default:
            break;
    }
    bo_add_mem(vide, 32, compressor_name);

    bo_add_16be(vide, 0x18);
    bo_add_16be(vide, 0xffff);


    const uint8_t *p_extradata = p_track->fmt.p_extra;
    size_t i_extradata = p_track->fmt.i_extra;
    if(p_track->sample_priv.i_data)
    {
        p_extradata = p_track->sample_priv.p_data;
        i_extradata = p_track->sample_priv.i_data;
    }


    switch(p_track->fmt.i_codec)
    {
    case 139:
        box_gather(vide, GetxxxxTag(p_extradata, i_extradata, "av1C"));
        box_gather(vide, GetColrBox(&p_track->fmt.video, b_mov));
        break;

    case 134:
    case 133:
        box_gather(vide, GetESDS(p_track));
        break;

    case 138:
        box_gather(vide, GetD263Tag());
        break;

    case 131:
        box_gather(vide, GetSVQ3Tag(p_extradata, i_extradata));
        break;

    case 137:
        box_gather(vide, GetAvcCTag(p_extradata, i_extradata));
        break;

    case 130:
        box_gather(vide, GetxxxxTag(p_extradata, i_extradata, "dvc1"));
            break;

    case 136:

        box_gather(vide, GetHvcCTag(p_extradata, i_extradata, 0));
        break;
    }

    box_gather(vide, GetMdcv(&p_track->fmt.video));
    box_gather(vide, GetClli(&p_track->fmt.video));

    return vide;
}
