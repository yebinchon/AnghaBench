#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ i_cat; } ;
struct decoder_owner {int error; int /*<<< orphan*/  p_resource; int /*<<< orphan*/ * p_aout; TYPE_1__ fmt; int /*<<< orphan*/  dec; } ;
typedef  int /*<<< orphan*/  es_format_t ;
typedef  enum reload { ____Placeholder_reload } reload ;
typedef  int /*<<< orphan*/  decoder_t ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
 scalar_t__ AUDIO_ES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int RELOAD_DECODER_AOUT ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7( struct decoder_owner *p_owner, bool b_packetizer,
                                 const es_format_t *restrict p_fmt, enum reload reload )
{
    /* Copy p_fmt since it can be destroyed by decoder_Clean */
    decoder_t *p_dec = &p_owner->dec;
    es_format_t fmt_in;
    if( FUNC5( &fmt_in, p_fmt ) != VLC_SUCCESS )
    {
        p_owner->error = true;
        return VLC_EGENERIC;
    }

    /* Restart the decoder module */
    FUNC3( p_dec );
    p_owner->error = false;

    if( reload == RELOAD_DECODER_AOUT )
    {
        FUNC2( p_owner->fmt.i_cat == AUDIO_ES );
        audio_output_t *p_aout = p_owner->p_aout;
        // no need to lock, the decoder and ModuleThread are dead
        p_owner->p_aout = NULL;
        if( p_aout )
        {
            FUNC1( p_aout );
            FUNC6( p_owner->p_resource, p_aout );
        }
    }

    if( FUNC0( p_dec, b_packetizer, &fmt_in ) )
    {
        p_owner->error = true;
        FUNC4( &fmt_in );
        return VLC_EGENERIC;
    }
    FUNC4( &fmt_in );
    return VLC_SUCCESS;
}