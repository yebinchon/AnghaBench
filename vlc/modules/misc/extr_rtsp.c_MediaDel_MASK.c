#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ vod_t ;
struct TYPE_16__ {int /*<<< orphan*/  media; int /*<<< orphan*/  i_media; } ;
typedef  TYPE_2__ vod_sys_t ;
struct TYPE_17__ {scalar_t__ i_rtsp; scalar_t__ i_es; int /*<<< orphan*/  lock; TYPE_8__** es; struct TYPE_17__* psz_rtsp_control_v4; struct TYPE_17__* psz_rtsp_control_v6; struct TYPE_17__* psz_rtsp_path; TYPE_8__** rtsp; int /*<<< orphan*/  p_rtsp_url; } ;
typedef  TYPE_3__ vod_media_t ;
struct TYPE_18__ {int /*<<< orphan*/  fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8( vod_t *p_vod, vod_media_t *p_media )
{
    vod_sys_t *p_sys = p_vod->p_sys;

    FUNC6( p_vod, "deleting media: %s", p_media->psz_rtsp_path );

    FUNC3( p_sys->i_media, p_sys->media, p_media );

    FUNC5( p_media->p_rtsp_url );

    while( p_media->i_rtsp > 0 )
        FUNC1( p_media, p_media->rtsp[0] );
    FUNC2( p_media->i_rtsp, p_media->rtsp );

    FUNC4( p_media->psz_rtsp_path );
    FUNC4( p_media->psz_rtsp_control_v6 );
    FUNC4( p_media->psz_rtsp_control_v4 );

    while( p_media->i_es )
        FUNC0( p_vod, p_media, &p_media->es[0]->fmt );
    FUNC2( p_media->i_es, p_media->es );

    FUNC7( &p_media->lock );

    FUNC4( p_media );
}