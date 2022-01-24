#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_11__ {scalar_t__ i_codec; scalar_t__ i_extra; } ;
struct TYPE_10__ {scalar_t__ i_codec; } ;
struct TYPE_12__ {TYPE_2__ fmt_in; TYPE_1__ fmt_out; int /*<<< orphan*/  pf_decode; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_13__ {int /*<<< orphan*/  i_align; int /*<<< orphan*/  pp_images; int /*<<< orphan*/  i_images; int /*<<< orphan*/  pp_ssa_styles; int /*<<< orphan*/  i_ssa_styles; } ;
typedef  TYPE_4__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  DecodeBlock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VLC_CODEC_USF ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 TYPE_4__* FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 

__attribute__((used)) static int FUNC6( vlc_object_t *p_this )
{
    decoder_t     *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_USF )
        return VLC_EGENERIC;

    /* Allocate the memory needed to store the decoder's structure */
    if( ( p_dec->p_sys = p_sys = FUNC3(1, sizeof(decoder_sys_t)) ) == NULL )
        return VLC_ENOMEM;

    p_dec->pf_decode = DecodeBlock;
    p_dec->fmt_out.i_codec = 0;

    /* init of p_sys */
    FUNC2( p_sys->i_ssa_styles, p_sys->pp_ssa_styles );
    FUNC2( p_sys->i_images, p_sys->pp_images );

    /* USF subtitles are mandated to be UTF-8, so don't need vlc_iconv */

    p_sys->i_align = FUNC5( p_dec, "subsdec-align" );

    FUNC0( p_dec );

    if( FUNC4( p_dec, "subsdec-formatted" ) )
    {
        if( p_dec->fmt_in.i_extra > 0 )
            FUNC1( p_dec );
    }

    return VLC_SUCCESS;
}