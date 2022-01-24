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
struct link_ref {int /*<<< orphan*/  title; int /*<<< orphan*/  link; struct link_ref* next; } ;

/* Variables and functions */
 size_t REF_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct link_ref*) ; 

__attribute__((used)) static void
FUNC2(struct link_ref **references)
{
	size_t i;

	for (i = 0; i < REF_TABLE_SIZE; ++i) {
		struct link_ref *r = references[i];
		struct link_ref *next;

		while (r) {
			next = r->next;
			FUNC0(r->link);
			FUNC0(r->title);
			FUNC1(r);
			r = next;
		}
	}
}