#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct shiftNode {int dummy; } ;
struct TYPE_3__ {struct shiftNode* uttable; } ;
typedef  TYPE_1__ UTHashTable ;
typedef  int /*<<< orphan*/  MMRGBHex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct shiftNode*,int /*<<< orphan*/ *,struct shiftNode*) ; 

__attribute__((used)) static struct shiftNode *FUNC1(UTHashTable *table,
                                      MMRGBHex color)
{
	struct shiftNode *uttable = table->uttable;
	struct shiftNode *node;
	FUNC0(uttable, &color, node);
	return node;
}