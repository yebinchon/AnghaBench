#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ vod_t ;
struct TYPE_12__ {int /*<<< orphan*/  psz_rtsp_path; } ;
typedef  TYPE_3__ vod_sys_t ;
struct TYPE_13__ {int i_es; int /*<<< orphan*/ * rtsp; TYPE_5__** es; } ;
typedef  TYPE_4__ vod_media_t ;
struct TYPE_10__ {int /*<<< orphan*/  clock_rate; } ;
struct TYPE_14__ {TYPE_1__ rtp_fmt; int /*<<< orphan*/  rtsp_id; } ;
typedef  TYPE_5__ media_es_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5( vod_t *p_vod, vod_media_t *p_media,
                        const char *psz_name )
{
    vod_sys_t *p_sys = p_vod->p_sys;
    char *psz_path;

    if( FUNC3( &psz_path, "%d%s", p_sys->psz_rtsp_path, psz_name ) < 0 )
        return;

    p_media->rtsp = FUNC1(FUNC2(p_vod), p_media, psz_path);
    FUNC4( psz_path );

    if (p_media->rtsp == NULL)
        return;

    for (int i = 0; i < p_media->i_es; i++)
    {
        media_es_t *p_es = p_media->es[i];
        p_es->rtsp_id = FUNC0(p_media->rtsp, NULL, 0,
                                  p_es->rtp_fmt.clock_rate, -1);
    }
}