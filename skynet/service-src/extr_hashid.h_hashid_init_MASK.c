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
struct hashid_node {int dummy; } ;
struct hashid {int hashmod; int cap; void* hash; TYPE_1__* id; scalar_t__ count; } ;
struct TYPE_2__ {int id; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct hashid *hi, int max) {
	int i;
	int hashcap;
	hashcap = 16;
	while (hashcap < max) {
		hashcap *= 2;
	}
	hi->hashmod = hashcap - 1;
	hi->cap = max;
	hi->count = 0;
	hi->id = FUNC1(max * sizeof(struct hashid_node));
	for (i=0;i<max;i++) {
		hi->id[i].id = -1;
		hi->id[i].next = NULL;
	}
	hi->hash = FUNC1(hashcap * sizeof(struct hashid_node *));
	FUNC0(hi->hash, 0, hashcap * sizeof(struct hashid_node *));
}