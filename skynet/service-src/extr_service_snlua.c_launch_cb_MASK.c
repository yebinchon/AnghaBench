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
typedef  int /*<<< orphan*/  uint32_t ;
struct snlua {int dummy; } ;
struct skynet_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct snlua*,struct skynet_context*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct skynet_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct skynet_context*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct skynet_context * context, void *ud, int type, int session, uint32_t source , const void * msg, size_t sz) {
	FUNC0(type == 0 && session == 0);
	struct snlua *l = ud;
	FUNC2(context, NULL, NULL);
	int err = FUNC1(l, context, msg, sz);
	if (err) {
		FUNC3(context, "EXIT", NULL);
	}

	return 0;
}