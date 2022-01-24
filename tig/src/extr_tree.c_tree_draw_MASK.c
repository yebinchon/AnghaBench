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
struct view {int dummy; } ;
struct tree_entry {int /*<<< orphan*/  name; } ;
struct line {scalar_t__ type; struct tree_entry* data; } ;

/* Variables and functions */
 scalar_t__ LINE_HEADER ; 
 int /*<<< orphan*/  FUNC0 (struct view*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct view*,struct line*,unsigned int) ; 

__attribute__((used)) static bool
FUNC2(struct view *view, struct line *line, unsigned int lineno)
{
	struct tree_entry *entry = line->data;

	if (line->type == LINE_HEADER) {
		FUNC0(view, line->type, "Directory path /%s", entry->name);
		return true;
	}

	return FUNC1(view, line, lineno);
}