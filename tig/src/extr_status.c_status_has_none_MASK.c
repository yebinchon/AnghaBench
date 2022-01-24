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
struct line {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct view*,struct line*) ; 

__attribute__((used)) static inline bool
FUNC1(struct view *view, struct line *line)
{
	return FUNC0(view, line) && !line[1].data;
}