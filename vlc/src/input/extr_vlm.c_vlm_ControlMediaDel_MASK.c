#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  media; int /*<<< orphan*/  i_media; TYPE_15__* p_vod; } ;
typedef  TYPE_4__ vlm_t ;
struct TYPE_20__ {int /*<<< orphan*/  logger; } ;
struct TYPE_19__ {scalar_t__ p_media; int /*<<< orphan*/  p_item; } ;
struct TYPE_23__ {int b_enabled; int /*<<< orphan*/  psz_name; scalar_t__ b_vod; } ;
struct TYPE_22__ {scalar_t__ i_instance; TYPE_3__ obj; TYPE_2__ vod; TYPE_6__ cfg; TYPE_1__** instance; } ;
typedef  TYPE_5__ vlm_media_sys_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_18__ {int /*<<< orphan*/  psz_name; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* pf_media_del ) (TYPE_15__*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLM_STOP_MEDIA_INSTANCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_15__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 

__attribute__((used)) static int FUNC10( vlm_t *p_vlm, int64_t id )
{
    vlm_media_sys_t *p_media = FUNC6( p_vlm, id );

    if( !p_media )
        return VLC_EGENERIC;

    while( p_media->i_instance > 0 )
        FUNC5( p_vlm, VLM_STOP_MEDIA_INSTANCE, id, p_media->instance[0]->psz_name );

    if( p_media->cfg.b_vod )
    {
        p_media->cfg.b_enabled = false;
        FUNC7( p_vlm, p_media );
    }

    /* */
    FUNC8( p_vlm, id, p_media->cfg.psz_name );

    FUNC9( &p_media->cfg );

    FUNC1( p_media->vod.p_item );

    if( p_media->vod.p_media )
        p_vlm->p_vod->pf_media_del( p_vlm->p_vod, p_media->vod.p_media );

    FUNC0( p_vlm->i_media, p_vlm->media, p_media );
    FUNC3( p_media->obj.logger );
    FUNC4(p_media);

    return VLC_SUCCESS;
}