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
struct keyvalue {int /*<<< orphan*/  queue; struct keyvalue* next; struct keyvalue** node; } ;
struct hashmap {int /*<<< orphan*/  queue; struct hashmap* next; struct hashmap** node; } ;

/* Variables and functions */
 int HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct keyvalue*) ; 

__attribute__((used)) static void
FUNC2(struct hashmap *hash) {
	int i;
	for (i=0;i<HASH_SIZE;i++) {
		struct keyvalue * node = hash->node[i];
		while (node) {
			struct keyvalue * next = node->next;
			FUNC0(node->queue);
			FUNC1(node);
			node = next;
		}
	}
	FUNC1(hash);
}