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
 struct line* FUNC0 (struct view*,unsigned long,char const*,int /*<<< orphan*/ ,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

struct line *
FUNC2(struct view *view, unsigned long pos, const char *text, enum line_type type, size_t cells)
{
	return FUNC0(view, pos, text, FUNC1(text), type, cells, false);
}