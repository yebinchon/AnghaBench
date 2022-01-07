
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {scalar_t__ i_codec; int i_extra; void* p_extra; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
typedef TYPE_2__ mp4mux_trackinfo_t ;
typedef int bo_t ;


 int STYLE_DEFAULT_FONT_SIZE ;
 scalar_t__ VLC_CODEC_QTXT ;
 scalar_t__ VLC_CODEC_SPU ;
 scalar_t__ VLC_CODEC_TTML ;
 scalar_t__ VLC_CODEC_TX3G ;
 scalar_t__ VLC_CODEC_WEBVTT ;
 int VLC_UNUSED (int *) ;
 int bo_add_16be (int *,int) ;
 int bo_add_32be (int *,int) ;
 int bo_add_64be (int *,int ) ;
 int bo_add_8 (int *,int) ;
 int bo_add_mem (int *,int,void*) ;
 int box_gather (int *,int *) ;
 int * box_new (char*) ;

__attribute__((used)) static bo_t *GetTextBox(vlc_object_t *p_obj, mp4mux_trackinfo_t *p_track, bool b_mov)
{
    VLC_UNUSED(p_obj);
    if(p_track->fmt.i_codec == VLC_CODEC_QTXT)
    {
        bo_t *text = box_new("text");
        if(!text)
            return ((void*)0);


        for (int i = 0; i < 6; i++)
            bo_add_8(text, 0);
        bo_add_16be(text, 1);

        if(p_track->fmt.i_extra >= 44)
        {

            bo_add_mem(text, p_track->fmt.i_extra, p_track->fmt.p_extra);
        }
        else
        {
            for (int i = 0; i < 6; i++)
                bo_add_8(text, 0);
            bo_add_16be(text, 1);

            bo_add_32be(text, 0);
            bo_add_32be(text, 0);
            for (int i = 0; i < 3; i++)
                bo_add_16be(text, 0);

            bo_add_64be(text, 0);
            bo_add_64be(text, 0);

            bo_add_16be(text, 0);
            bo_add_16be(text, 0);
            bo_add_8(text, 0);
            bo_add_16be(text, 0);

            for (int i = 0; i < 3; i++)
                bo_add_16be(text, 0xff);

            bo_add_8(text, 5);
            bo_add_mem(text, 5, (void*)"Serif");
        }
        return text;
    }
    else if(p_track->fmt.i_codec == VLC_CODEC_SPU ||
            p_track->fmt.i_codec == VLC_CODEC_TX3G)
    {
        bo_t *tx3g = box_new("tx3g");
        if(!tx3g)
            return ((void*)0);


        for (int i = 0; i < 6; i++)
            bo_add_8(tx3g, 0);
        bo_add_16be(tx3g, 1);

        if(p_track->fmt.i_codec == VLC_CODEC_TX3G &&
           p_track->fmt.i_extra >= 32)
        {

            bo_add_mem(tx3g, p_track->fmt.i_extra, p_track->fmt.p_extra);
        }
        else
        {

            bo_add_32be(tx3g, 0);
            bo_add_16be(tx3g, 0);

            bo_add_32be(tx3g, 0);


            bo_add_64be(tx3g, 0);


            bo_add_16be(tx3g, 0);
            bo_add_16be(tx3g, 0);
            bo_add_16be(tx3g, 0);
            bo_add_8(tx3g, 0);
            bo_add_8(tx3g, STYLE_DEFAULT_FONT_SIZE);
            bo_add_32be(tx3g, 0xFFFFFFFFU);


            bo_t *ftab = box_new("ftab");
            if(ftab)
            {
                bo_add_16be(ftab, b_mov ? 2 : 3);

                bo_add_8(ftab, 5);
                bo_add_mem(ftab, 5, (void*)"Serif");
                bo_add_8(ftab, 10);
                bo_add_mem(ftab, 10, (void*) (b_mov ? "Sans-Serif" : "Sans-serif"));
                if(!b_mov)
                {
                    bo_add_8(ftab, 9);
                    bo_add_mem(ftab, 9, (void*)"Monospace");
                }

                box_gather(tx3g, ftab);
            }
        }

        return tx3g;
    }
    else if(p_track->fmt.i_codec == VLC_CODEC_WEBVTT)
    {
        bo_t *wvtt = box_new("wvtt");
        if(!wvtt)
            return ((void*)0);


        for (int i = 0; i < 6; i++)
            bo_add_8(wvtt, 0);
        bo_add_16be(wvtt, 1);

        bo_t *ftab = box_new("vttc");
        box_gather(wvtt, ftab);

        return wvtt;
    }
    else if(p_track->fmt.i_codec == VLC_CODEC_TTML)
    {
        bo_t *stpp = box_new("stpp");
        if(!stpp)
            return ((void*)0);


        for (int i = 0; i < 6; i++)
            bo_add_8(stpp, 0);
        bo_add_16be(stpp, 1);

        return stpp;
    }

    return ((void*)0);
}
