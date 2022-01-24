#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int container_len; TYPE_1__* container; } ;
typedef  TYPE_2__ fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_5__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, fz_device *dev, int pop_type, int push_type)
{
	if (dev->container_len == 0 || dev->container[dev->container_len-1].type != pop_type)
	{
		FUNC0(ctx, dev);
		FUNC1(ctx, FZ_ERROR_GENERIC, "device calls unbalanced");
	}
	dev->container[dev->container_len-1].type = push_type;
}