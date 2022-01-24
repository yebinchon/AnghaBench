#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlm_t ;
struct TYPE_12__ {int i_input; char* psz_output; int i_option; char** ppsz_option; char** ppsz_input; int /*<<< orphan*/  psz_name; scalar_t__ b_vod; int /*<<< orphan*/  b_enabled; } ;
typedef  TYPE_2__ vlm_media_t ;
struct TYPE_11__ {int /*<<< orphan*/  p_media; } ;
struct TYPE_13__ {TYPE_2__ cfg; int /*<<< orphan*/  instance; int /*<<< orphan*/  i_instance; TYPE_1__ vod; } ;
typedef  TYPE_3__ vlm_media_sys_t ;
struct TYPE_14__ {int i_index; int /*<<< orphan*/  p_item; int /*<<< orphan*/ * player; int /*<<< orphan*/  p_parent; } ;
typedef  TYPE_4__ vlm_media_instance_sys_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  VLC_INPUT_OPTION_TRUSTED ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_VAR_ADDRESS ; 
 int /*<<< orphan*/  VLC_VAR_STRING ; 
 int FUNC1 (char**,char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC19 (TYPE_3__*,char const*) ; 
 TYPE_4__* FUNC20 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23( vlm_t *p_vlm, int64_t id, const char *psz_id, int i_input_index, const char *psz_vod_output )
{
    vlm_media_sys_t *p_media = FUNC18( p_vlm, id );
    vlm_media_instance_sys_t *p_instance;

    if( !p_media || !p_media->cfg.b_enabled || p_media->cfg.i_input <= 0 )
        return VLC_EGENERIC;

    /* TODO support multiple input for VOD with sout-keep ? */

    if( ( p_media->cfg.b_vod && !psz_vod_output ) || ( !p_media->cfg.b_vod && psz_vod_output ) )
        return VLC_EGENERIC;

    if( i_input_index < 0 || i_input_index >= p_media->cfg.i_input )
        return VLC_EGENERIC;

    p_instance = FUNC19( p_media, psz_id );
    if( !p_instance )
    {
        vlm_media_t *p_cfg = &p_media->cfg;

        p_instance = FUNC20( p_media, psz_id );
        if( !p_instance )
            return VLC_ENOMEM;

        if ( p_cfg->b_vod )
        {
            FUNC6( p_instance->p_parent, "vod-media", VLC_VAR_ADDRESS );
            FUNC7( p_instance->p_parent, "vod-media",
                            p_media->vod.p_media );
            FUNC6( p_instance->p_parent, "vod-session", VLC_VAR_STRING );
            FUNC8( p_instance->p_parent, "vod-session", psz_id );
        }

        if( p_cfg->psz_output != NULL || psz_vod_output != NULL )
        {
            char *psz_buffer;
            if( FUNC1( &psz_buffer, "sout=%s%s%s",
                      p_cfg->psz_output ? p_cfg->psz_output : "",
                      (p_cfg->psz_output && psz_vod_output) ? ":" : psz_vod_output ? "#" : "",
                      psz_vod_output ? psz_vod_output : "" ) != -1 )
            {
                FUNC3( p_instance->p_item, psz_buffer, VLC_INPUT_OPTION_TRUSTED );
                FUNC2( psz_buffer );
            }
        }

        for( int i = 0; i < p_cfg->i_option; i++ )
            FUNC3( p_instance->p_item, p_cfg->ppsz_option[i], VLC_INPUT_OPTION_TRUSTED );
        FUNC0( p_media->i_instance, p_media->instance, p_instance );
    }

    /* Stop old instance */
    vlc_player_t *player = p_instance->player;
    FUNC12(player);
    if (FUNC10(player))
    {
        if( p_instance->i_index == i_input_index )
        {
            if (FUNC11(player))
                FUNC13(player);
            return VLC_SUCCESS;
        }

        FUNC16(player);
        FUNC17(player);
        FUNC22( p_vlm, id, p_media->cfg.psz_name );
        FUNC12(player);
    }

    /* Start new one */
    p_instance->i_index = i_input_index;
    if( FUNC5( p_media->cfg.ppsz_input[p_instance->i_index], "://" ) == NULL )
    {
        char *psz_uri = FUNC9(
                          p_media->cfg.ppsz_input[p_instance->i_index], NULL );
        FUNC4( p_instance->p_item, psz_uri ) ;
        FUNC2( psz_uri );
    }
    else
        FUNC4( p_instance->p_item, p_media->cfg.ppsz_input[p_instance->i_index] ) ;

    FUNC14(player, p_instance->p_item);
    FUNC15(player);
    FUNC17(player);

    FUNC21( p_vlm, id, p_media->cfg.psz_name );

    return VLC_SUCCESS;
}