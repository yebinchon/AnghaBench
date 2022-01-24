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
struct view {int /*<<< orphan*/  ref; } ;
struct line {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct line*) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static inline void
FUNC3(struct view *view, struct line *line)
{
	const char *text = FUNC0(line);
	size_t offset = FUNC1(text);

	FUNC2(view->ref, text + offset);
}