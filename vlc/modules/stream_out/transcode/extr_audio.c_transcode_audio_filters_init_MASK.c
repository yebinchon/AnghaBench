#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sout_stream_t ;
struct TYPE_3__ {scalar_t__ psz_filters; } ;
typedef  TYPE_1__ sout_filters_config_t ;
typedef  int /*<<< orphan*/  audio_format_t ;
typedef  int /*<<< orphan*/  aout_filters_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_VAR_BOOL ; 
 int /*<<< orphan*/  VLC_VAR_STRING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC4( sout_stream_t *p_stream,
                                         const sout_filters_config_t *p_cfg,
                                         const audio_format_t *p_dec_out,
                                         const audio_format_t *p_enc_in,
                                         aout_filters_t **pp_chain )
{
    /* Load user specified audio filters */
    /* XXX: These variable names come kinda out of nowhere... */
    FUNC1( p_stream, "audio-time-stretch", VLC_VAR_BOOL );
    FUNC1( p_stream, "audio-filter", VLC_VAR_STRING );
    if( p_cfg->psz_filters )
        FUNC3( p_stream, "audio-filter", p_cfg->psz_filters );
    *pp_chain = FUNC0( p_stream, p_dec_out, p_enc_in, NULL );
    FUNC2( p_stream, "audio-filter" );
    FUNC2( p_stream, "audio-time-stretch" );
    return ( *pp_chain != NULL ) ? VLC_SUCCESS : VLC_EGENERIC;
}