#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rtcdev {int reg_b; } ;
struct vrtc {int /*<<< orphan*/  callout; struct rtcdev rtcdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int RTCSB_ALL_INTRS ; 
 int RTCSB_SQWE ; 
 int /*<<< orphan*/  FUNC1 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vrtc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vrtc*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct vrtc *vrtc)
{
	struct rtcdev *rtc;

	FUNC1(vrtc);

	rtc = &vrtc->rtcdev;
	FUNC4(vrtc, rtc->reg_b & ~(RTCSB_ALL_INTRS | RTCSB_SQWE));
	FUNC5(vrtc, 0);
	FUNC0(!FUNC3(&vrtc->callout), ("rtc callout still active"));

	FUNC2(vrtc);
}