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
struct line {int dummy; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;

/* Variables and functions */
 struct line* FUNC0 (struct view*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

struct line *
FUNC1(struct view *view, enum line_type type)
{
	return FUNC0(view, NULL, type, 0, false);
}