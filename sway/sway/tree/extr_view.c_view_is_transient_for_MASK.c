#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sway_view {TYPE_1__* impl; } ;
struct TYPE_2__ {scalar_t__ (* is_transient_for ) (struct sway_view*,struct sway_view*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sway_view*,struct sway_view*) ; 

bool FUNC1(struct sway_view *child,
		struct sway_view *ancestor) {
	return child->impl->is_transient_for &&
		child->impl->is_transient_for(child, ancestor);
}