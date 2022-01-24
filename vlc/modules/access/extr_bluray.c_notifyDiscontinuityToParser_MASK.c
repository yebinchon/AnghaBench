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
struct TYPE_3__ {int /*<<< orphan*/ * p_clip_info; } ;
typedef  TYPE_1__ demux_sys_t ;
typedef  int /*<<< orphan*/  BLURAY_CLIP_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audio ; 
 int /*<<< orphan*/  ig ; 
 int /*<<< orphan*/  pg ; 
 int /*<<< orphan*/  sec_audio ; 
 int /*<<< orphan*/  sec_video ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static void FUNC1( demux_sys_t *p_sys )
{
    const BLURAY_CLIP_INFO *p_clip = p_sys->p_clip_info;
    if( p_clip )
    {
        FUNC0(audio);
        FUNC0(video);
        FUNC0(pg);
        FUNC0(ig);
        FUNC0(sec_audio);
        FUNC0(sec_video);
    }
}