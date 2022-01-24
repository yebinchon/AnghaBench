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
struct skynet_monitor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skynet_monitor*,int /*<<< orphan*/ ,int) ; 
 struct skynet_monitor* FUNC1 (int) ; 

struct skynet_monitor * 
FUNC2() {
	struct skynet_monitor * ret = FUNC1(sizeof(*ret));
	FUNC0(ret, 0, sizeof(*ret));
	return ret;
}