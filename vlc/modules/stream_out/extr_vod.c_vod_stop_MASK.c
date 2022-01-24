#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  p_vod; } ;
typedef  TYPE_1__ vod_media_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  RTSP_CMD_TYPE_STOP ; 

void FUNC1(vod_media_t *p_media, const char *psz_session)
{
    FUNC0(p_media->p_vod, RTSP_CMD_TYPE_STOP, p_media, psz_session);
}