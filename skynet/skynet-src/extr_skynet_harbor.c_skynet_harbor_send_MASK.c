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
struct remote_message {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTYPE_SYSTEM ; 
 scalar_t__ REMOTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct remote_message*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void 
FUNC3(struct remote_message *rmsg, uint32_t source, int session) {
	FUNC0(FUNC1(rmsg->type) && REMOTE);
	FUNC2(REMOTE, rmsg, sizeof(*rmsg) , source, PTYPE_SYSTEM , session);
}