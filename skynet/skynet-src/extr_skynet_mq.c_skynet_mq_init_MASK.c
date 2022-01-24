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
struct global_queue {int dummy; } ;

/* Variables and functions */
 struct global_queue* Q ; 
 int /*<<< orphan*/  FUNC0 (struct global_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct global_queue*,int /*<<< orphan*/ ,int) ; 
 struct global_queue* FUNC2 (int) ; 

void 
FUNC3() {
	struct global_queue *q = FUNC2(sizeof(*q));
	FUNC1(q,0,sizeof(*q));
	FUNC0(q);
	Q=q;
}