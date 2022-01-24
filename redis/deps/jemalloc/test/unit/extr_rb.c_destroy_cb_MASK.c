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
typedef  int /*<<< orphan*/  node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC1(node_t *node, void *data) {
	unsigned *nnodes = (unsigned *)data;

	FUNC0(*nnodes, 0, "Destruction removed too many nodes");
	(*nnodes)--;
}