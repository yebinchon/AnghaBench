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
struct TYPE_3__ {int /*<<< orphan*/ * spa_label_features; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(spa_t *spa)
{
	nvlist_t *nv = spa->spa_label_features;
	nvpair_t *pair;

	(void) FUNC2("label config:\n");
	for (pair = FUNC0(nv, NULL);
	    pair != NULL;
	    pair = FUNC0(nv, pair)) {
		(void) FUNC2("\t%s\n", FUNC1(pair));
	}
}