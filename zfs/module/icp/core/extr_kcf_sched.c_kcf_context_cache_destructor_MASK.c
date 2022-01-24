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
struct TYPE_2__ {scalar_t__ kc_refcnt; int /*<<< orphan*/  kc_in_use_lock; } ;
typedef  TYPE_1__ kcf_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void *buf, void *cdrarg)
{
	kcf_context_t *kctx = (kcf_context_t *)buf;

	FUNC0(kctx->kc_refcnt == 0);
	FUNC1(&kctx->kc_in_use_lock);
}