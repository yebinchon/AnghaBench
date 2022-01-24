#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vod_t ;
struct TYPE_23__ {int /*<<< orphan*/  media; int /*<<< orphan*/  i_media; int /*<<< orphan*/  i_id; TYPE_5__* p_vod; } ;
typedef  TYPE_3__ vlm_t ;
struct TYPE_24__ {int /*<<< orphan*/  psz_name; scalar_t__ b_vod; } ;
typedef  TYPE_4__ vlm_media_t ;
struct TYPE_26__ {int /*<<< orphan*/  psz_name; scalar_t__ id; } ;
struct TYPE_22__ {int /*<<< orphan*/ * p_media; int /*<<< orphan*/  p_item; } ;
struct TYPE_21__ {int /*<<< orphan*/ * logger; } ;
struct TYPE_25__ {TYPE_6__ cfg; int /*<<< orphan*/  instance; int /*<<< orphan*/  i_instance; TYPE_2__ vod; TYPE_1__ obj; int /*<<< orphan*/  pf_media_control; TYPE_3__* p_data; int /*<<< orphan*/  p_module; } ;
typedef  TYPE_5__ vlm_media_sys_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  vlm_MediaVodControl ; 
 int FUNC14 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC17( vlm_t *p_vlm, vlm_media_t *p_cfg, int64_t *p_id )
{
    vlm_media_sys_t *p_media;
    char *header;

    if( FUNC13( p_vlm, p_cfg ) || FUNC12( p_vlm, p_cfg->psz_name ) )
    {
        FUNC8( p_vlm, "invalid media description" );
        return VLC_EGENERIC;
    }
    /* Check if we need to load the VOD server */
    if( p_cfg->b_vod && !p_vlm->p_vod )
    {
        p_vlm->p_vod = FUNC10( FUNC2(p_vlm), sizeof( vod_t ),
                                          "vod server" );
        p_vlm->p_vod->p_module = FUNC7( p_vlm->p_vod, "vod server", "vod-server" );
        if( !p_vlm->p_vod->p_module )
        {
            FUNC8( p_vlm, "cannot find vod server" );
            FUNC11(p_vlm->p_vod);
            p_vlm->p_vod = NULL;
            return VLC_EGENERIC;
        }

        p_vlm->p_vod->p_data = p_vlm;
        p_vlm->p_vod->pf_media_control = vlm_MediaVodControl;
    }

    p_media = FUNC10( FUNC2(p_vlm), sizeof( *p_media ),
                                 "media" );
    if( !p_media )
        return VLC_ENOMEM;

    if( FUNC4( &header, FUNC3("Media: %s"), p_cfg->psz_name ) == -1 )
    {
        FUNC11(p_media);
        return VLC_ENOMEM;
    }

    p_media->obj.logger = FUNC9( p_media->obj.logger, header );
    FUNC5( header );

    if( p_media->obj.logger == NULL )
    {
        FUNC11(p_media);
        return VLC_ENOMEM;
    }

    FUNC16( &p_media->cfg, p_cfg );
    p_media->cfg.id = p_vlm->i_id++;
    /* FIXME do we do something here if enabled is true ? */

    p_media->vod.p_item = FUNC6( NULL, NULL );

    p_media->vod.p_media = NULL;
    FUNC1( p_media->i_instance, p_media->instance );

    /* */
    FUNC0( p_vlm->i_media, p_vlm->media, p_media );

    if( p_id )
        *p_id = p_media->cfg.id;

    /* */
    FUNC15( p_vlm, p_media->cfg.id, p_media->cfg.psz_name );
    return FUNC14( p_vlm, p_media );
}