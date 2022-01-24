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
struct screen_title_entry {int /*<<< orphan*/  text; } ;
struct screen {int /*<<< orphan*/ * titles; int /*<<< orphan*/  title; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct screen_title_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct screen *s)
{
	struct screen_title_entry *title_entry;

	if (s->titles == NULL) {
		s->titles = FUNC2(sizeof *s->titles);
		FUNC0(s->titles);
	}
	title_entry = FUNC2(sizeof *title_entry);
	title_entry->text = FUNC3(s->title);
	FUNC1(s->titles, title_entry, entry);
}