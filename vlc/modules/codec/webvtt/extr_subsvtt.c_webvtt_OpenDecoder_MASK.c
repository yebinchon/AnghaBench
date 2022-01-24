#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_8__ {scalar_t__ i_codec; scalar_t__ i_extra; } ;
struct TYPE_9__ {TYPE_1__ fmt_in; int /*<<< orphan*/  pf_flush; int /*<<< orphan*/  pf_decode; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ decoder_t ;
struct TYPE_10__ {TYPE_4__* p_root; } ;
typedef  TYPE_3__ decoder_sys_t ;
struct TYPE_11__ {int /*<<< orphan*/  psz_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  DecodeBlock ; 
 int /*<<< orphan*/  Flush ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ VLC_CODEC_WEBVTT ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 TYPE_3__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_WEBVTT )
        return VLC_EGENERIC;

    /* Allocate the memory needed to store the decoder's structure */
    p_dec->p_sys = p_sys = FUNC1( 1, sizeof( *p_sys ) );
    if( FUNC4( p_sys == NULL ) )
        return VLC_ENOMEM;

    p_sys->p_root = FUNC5( NULL );
    if( !p_sys->p_root )
    {
        FUNC2( p_sys );
        return VLC_ENOMEM;
    }
    p_sys->p_root->psz_tag = FUNC3( "video" );

    p_dec->pf_decode = DecodeBlock;
    p_dec->pf_flush  = Flush;

    if( p_dec->fmt_in.i_extra )
        FUNC0( p_dec );

    return VLC_SUCCESS;
}