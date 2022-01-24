#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {scalar_t__ i_codec; int i_extra; void* p_extra; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
typedef  TYPE_2__ mp4mux_trackinfo_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 int STYLE_DEFAULT_FONT_SIZE ; 
 scalar_t__ VLC_CODEC_QTXT ; 
 scalar_t__ VLC_CODEC_SPU ; 
 scalar_t__ VLC_CODEC_TTML ; 
 scalar_t__ VLC_CODEC_TX3G ; 
 scalar_t__ VLC_CODEC_WEBVTT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 

__attribute__((used)) static bo_t *FUNC8(vlc_object_t *p_obj, mp4mux_trackinfo_t *p_track, bool b_mov)
{
    FUNC0(p_obj);
    if(p_track->fmt.i_codec == VLC_CODEC_QTXT)
    {
        bo_t *text = FUNC7("text");
        if(!text)
            return NULL;

        /* Sample Entry Header */
        for (int i = 0; i < 6; i++)
            FUNC4(text, 0);        // reserved;
        FUNC1(text, 1);         // data-reference-index

        if(p_track->fmt.i_extra >= 44)
        {
            /* Copy the original sample description format */
            FUNC5(text, p_track->fmt.i_extra, p_track->fmt.p_extra);
        }
        else
        {
            for (int i = 0; i < 6; i++)
                FUNC4(text, 0);        // reserved;
            FUNC1(text, 1);         // data-reference-index

            FUNC2(text, 0);         // display flags
            FUNC2(text, 0);         // justification
            for (int i = 0; i < 3; i++)
                FUNC1(text, 0);     // background color

            FUNC3(text, 0);         // box text
            FUNC3(text, 0);         // reserved

            FUNC1(text, 0);         // font-number
            FUNC1(text, 0);         // font-face
            FUNC4(text, 0);            // reserved
            FUNC1(text, 0);         // reserved

            for (int i = 0; i < 3; i++)
                FUNC1(text, 0xff);  // foreground color

            FUNC4(text, 5);
            FUNC5(text, 5,  (void*)"Serif");
        }
        return text;
    }
    else if(p_track->fmt.i_codec == VLC_CODEC_SPU ||
            p_track->fmt.i_codec == VLC_CODEC_TX3G)
    {
        bo_t *tx3g = FUNC7("tx3g");
        if(!tx3g)
            return NULL;

        /* Sample Entry Header */
        for (int i = 0; i < 6; i++)
            FUNC4(tx3g, 0);        // reserved;
        FUNC1(tx3g, 1);         // data-reference-index

        if(p_track->fmt.i_codec == VLC_CODEC_TX3G &&
           p_track->fmt.i_extra >= 32)
        {
            /* Copy the original sample description format */
            FUNC5(tx3g, p_track->fmt.i_extra, p_track->fmt.p_extra);
        }
        else /* Build TTXT(tx3g) sample desc */
        {
            /* tx3g sample description */
            FUNC2(tx3g, 0);         // display flags
            FUNC1(tx3g, 0);         // justification

            FUNC2(tx3g, 0);         // background color

            /* BoxRecord */
            FUNC3(tx3g, 0);

            /* StyleRecord*/
            FUNC1(tx3g, 0);         // startChar
            FUNC1(tx3g, 0);         // endChar
            FUNC1(tx3g, 0);         // default font ID
            FUNC4(tx3g, 0);            // face style flags
            FUNC4(tx3g, STYLE_DEFAULT_FONT_SIZE);  // font size
            FUNC2(tx3g, 0xFFFFFFFFU);// foreground color

            /* FontTableBox */
            bo_t *ftab = FUNC7("ftab");
            if(ftab)
            {
                FUNC1(ftab, b_mov ? 2 : 3); // Entry Count
                /* Font Record */
                FUNC4(ftab, 5);
                FUNC5(ftab, 5,  (void*)"Serif");
                FUNC4(ftab, 10);
                FUNC5(ftab, 10, (void*) (b_mov ? "Sans-Serif" : "Sans-serif"));
                if(!b_mov) /* qt only allows "Serif" and "Sans-Serif" */
                {
                    FUNC4(ftab, 9);
                    FUNC5(ftab, 9,  (void*)"Monospace");
                }

                FUNC6(tx3g, ftab);
            }
        }

        return tx3g;
    }
    else if(p_track->fmt.i_codec == VLC_CODEC_WEBVTT)
    {
        bo_t *wvtt = FUNC7("wvtt");
        if(!wvtt)
            return NULL;

        /* Sample Entry Header */
        for (int i = 0; i < 6; i++)
            FUNC4(wvtt, 0);        // reserved;
        FUNC1(wvtt, 1);         // data-reference-index

        bo_t *ftab = FUNC7("vttc");
        FUNC6(wvtt, ftab);

        return wvtt;
    }
    else if(p_track->fmt.i_codec == VLC_CODEC_TTML)
    {
        bo_t *stpp = FUNC7("stpp");
        if(!stpp)
            return NULL;

        /* Sample Entry Header */
        for (int i = 0; i < 6; i++)
            FUNC4(stpp, 0);        // reserved;
        FUNC1(stpp, 1);         // data-reference-index

        return stpp;
    }

    return NULL;
}