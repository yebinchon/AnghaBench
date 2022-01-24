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
struct TYPE_4__ {int /*<<< orphan*/  b_has_video_layout_listener; } ;
typedef  int /*<<< orphan*/  JNIEnv ;
typedef  TYPE_1__ AWindowHandler ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CallVoidMethod ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setVideoLayout ; 

int
FUNC3(AWindowHandler *p_awh,
                              int i_width, int i_height,
                              int i_visible_width, int i_visible_height,
                              int i_sar_num, int i_sar_den)
{
    FUNC2(p_awh->b_has_video_layout_listener);
    JNIEnv *p_env = FUNC0(p_awh);
    if (!p_env)
        return VLC_EGENERIC;

    FUNC1(CallVoidMethod, setVideoLayout, i_width, i_height,
                i_visible_width,i_visible_height, i_sar_num, i_sar_den);
    return VLC_SUCCESS;
}