#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ users; int /*<<< orphan*/  lock_manage; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_manage; int /*<<< orphan*/  thread; struct TYPE_8__* p_vod; int /*<<< orphan*/  p_module; int /*<<< orphan*/  schedule; int /*<<< orphan*/  i_schedule; int /*<<< orphan*/  media; int /*<<< orphan*/  i_media; } ;
typedef  TYPE_1__ vlm_t ;
struct TYPE_9__ {TYPE_1__* p_vlm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLM_CLEAR_MEDIAS ; 
 int /*<<< orphan*/  VLM_CLEAR_SCHEDULES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlm_mutex ; 

void FUNC13( vlm_t *p_vlm )
{
    /* vlm_Delete() is serialized against itself, and against vlm_New().
     * This mutex protects libvlc_priv->p_vlm and p_vlm->users. */
    FUNC8( &vlm_mutex );
    FUNC1( p_vlm->users > 0 );
    if( --p_vlm->users == 0 )
        FUNC1( FUNC2(FUNC11(p_vlm))->p_vlm == p_vlm );
    else
        p_vlm = NULL;

    if( p_vlm == NULL )
    {
        FUNC9( &vlm_mutex );
        return;
    }

    /* Destroy and release VLM */
    FUNC8( &p_vlm->lock );
    FUNC12( p_vlm, VLM_CLEAR_MEDIAS );
    FUNC0( p_vlm->i_media, p_vlm->media );

    FUNC12( p_vlm, VLM_CLEAR_SCHEDULES );
    FUNC0( p_vlm->i_schedule, p_vlm->schedule );
    FUNC9( &p_vlm->lock );

    FUNC4( p_vlm->thread );

    if( p_vlm->p_vod )
    {
        FUNC3( p_vlm->p_vod, p_vlm->p_vod->p_module );
        FUNC10(p_vlm->p_vod);
    }

    FUNC2(FUNC11(p_vlm))->p_vlm = NULL;
    FUNC9( &vlm_mutex );

    FUNC6( p_vlm->thread, NULL );

    FUNC5( &p_vlm->wait_manage );
    FUNC7( &p_vlm->lock );
    FUNC7( &p_vlm->lock_manage );
    FUNC10(p_vlm);
}