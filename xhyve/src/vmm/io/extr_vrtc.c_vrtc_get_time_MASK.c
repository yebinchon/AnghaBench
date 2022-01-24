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
typedef  int /*<<< orphan*/  time_t ;
struct vrtc {int dummy; } ;
struct vm {int dummy; } ;
typedef  int /*<<< orphan*/  sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vrtc*) ; 
 struct vrtc* FUNC2 (struct vm*) ; 
 int /*<<< orphan*/  FUNC3 (struct vrtc*,int /*<<< orphan*/ *) ; 

time_t
FUNC4(struct vm *vm)
{
	struct vrtc *vrtc;
	sbintime_t basetime;
	time_t t;

	vrtc = FUNC2(vm);
	FUNC0(vrtc);
	t = FUNC3(vrtc, &basetime);
	FUNC1(vrtc);

	return (t);
}