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
typedef  enum line_type { ____Placeholder_line_type } line_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct view*) ; 
 int FUNC1 (struct view*,int,char const*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline bool
FUNC2(struct view *view, enum line_type type, const char *string, int length)
{
	return FUNC1(view, type, string, length, FUNC0(view), false);
}