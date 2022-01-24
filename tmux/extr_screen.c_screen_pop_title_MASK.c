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
struct screen_title_entry {struct screen_title_entry* text; } ;
struct screen {int /*<<< orphan*/ * titles; } ;

/* Variables and functions */
 struct screen_title_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct screen_title_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC2 (struct screen_title_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen*,struct screen_title_entry*) ; 

void
FUNC4(struct screen *s)
{
	struct screen_title_entry *title_entry;

	if (s->titles == NULL)
		return;

	title_entry = FUNC0(s->titles);
	if (title_entry != NULL) {
		FUNC3(s, title_entry->text);

		FUNC1(s->titles, title_entry, entry);
		FUNC2(title_entry->text);
		FUNC2(title_entry);
	}
}