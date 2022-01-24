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
struct gate {int listen_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gate*,int /*<<< orphan*/ ,int) ; 
 struct gate* FUNC1 (int) ; 

struct gate *
FUNC2(void) {
	struct gate * g = FUNC1(sizeof(*g));
	FUNC0(g,0,sizeof(*g));
	g->listen_id = -1;
	return g;
}