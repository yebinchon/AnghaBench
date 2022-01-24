#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_13__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  p_child; } ;
typedef  TYPE_2__ webvtt_region_t ;
typedef  int /*<<< orphan*/  webvtt_dom_node_t ;
struct TYPE_19__ {int /*<<< orphan*/  psz_region; } ;
struct TYPE_22__ {char* psz_id; int /*<<< orphan*/ * p_parent; TYPE_13__ settings; } ;
typedef  TYPE_3__ webvtt_dom_cue_t ;
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_23__ {scalar_t__ i_type; size_t i_payload; int /*<<< orphan*/  const* p_payload; } ;
typedef  TYPE_4__ mp4_box_iterator_t ;
struct TYPE_24__ {TYPE_6__* p_sys; } ;
typedef  TYPE_5__ decoder_t ;
struct TYPE_25__ {TYPE_1__* p_root; } ;
typedef  TYPE_6__ decoder_sys_t ;
struct TYPE_20__ {int /*<<< orphan*/  p_child; } ;

/* Variables and functions */
#define  ATOM_iden 130 
#define  ATOM_payl 129 
#define  ATOM_sttg 128 
 scalar_t__ ATOM_vttc ; 
 scalar_t__ ATOM_vttx ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 void* FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*,char*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_2__* FUNC10 (TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11( decoder_t *p_dec,
                           const uint8_t *p_buffer, size_t i_buffer,
                           vlc_tick_t i_start, vlc_tick_t i_stop )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    mp4_box_iterator_t it;
    FUNC3( &it, p_buffer, i_buffer );
    while( FUNC4( &it ) )
    {
        if( it.i_type == ATOM_vttc || it.i_type == ATOM_vttx )
        {
            webvtt_dom_cue_t *p_cue = FUNC7( i_start, i_stop );
            if( !p_cue )
                continue;

            mp4_box_iterator_t vtcc;
            FUNC3( &vtcc, it.p_payload, it.i_payload );
            while( FUNC4( &vtcc ) )
            {
                char *psz = NULL;
                switch( vtcc.i_type )
                {
                    case ATOM_iden:
                        FUNC2( p_cue->psz_id );
                        p_cue->psz_id = FUNC5( (char *) vtcc.p_payload, vtcc.i_payload );
                        break;
                    case ATOM_sttg:
                    {
                        psz = FUNC5( (char *) vtcc.p_payload, vtcc.i_payload );
                        if( psz )
                            FUNC6( &p_cue->settings, psz );
                    } break;
                    case ATOM_payl:
                    {
                        psz = FUNC5( (char *) vtcc.p_payload, vtcc.i_payload );
                        if( psz )
                            FUNC0( p_dec, psz, p_cue );
                    } break;
                }
                FUNC2( psz );
            }

            webvtt_region_t *p_region = FUNC10( p_sys,
                                                               p_cue->settings.psz_region );
            if( p_region )
            {
                FUNC9( p_region, p_cue );
                FUNC1( p_region->p_child );
            }
            else
            {
                FUNC8( &p_sys->p_root->p_child, p_cue );
                p_cue->p_parent = (webvtt_dom_node_t *) p_sys->p_root;
            }
        }
    }
    return 0;
}