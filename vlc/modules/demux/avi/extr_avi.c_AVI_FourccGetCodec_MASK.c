#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_fourcc_t ;

/* Variables and functions */
#define  AUDIO_ES 129 
#define  VIDEO_ES 128 
 int /*<<< orphan*/  VLC_CODEC_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

vlc_fourcc_t FUNC2( unsigned int i_cat, vlc_fourcc_t i_codec )
{
    switch( i_cat )
    {
        case AUDIO_ES:
            FUNC1( i_codec, &i_codec, NULL );
            return i_codec;
        case VIDEO_ES:
            return FUNC0( i_cat, i_codec );
        default:
            return VLC_CODEC_UNKNOWN;
    }
}