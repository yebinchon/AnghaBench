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
struct harbor {int /*<<< orphan*/  slave; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTYPE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC2(struct harbor *h, int id) {
	char down[64];
	int n = FUNC1(down, "D %d",id);

	FUNC0(h->ctx, 0, h->slave, PTYPE_TEXT, 0, down, n);
}