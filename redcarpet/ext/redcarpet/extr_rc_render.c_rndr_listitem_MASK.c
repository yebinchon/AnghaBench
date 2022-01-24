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
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MKD_LIST_ORDERED ; 
 int /*<<< orphan*/  FUNC2 (struct buf const*) ; 

__attribute__((used)) static void
FUNC3(struct buf *ob, const struct buf *text, int flags, void *opaque)
{
	FUNC0("list_item", 2, FUNC2(text),
			(flags & MKD_LIST_ORDERED) ? FUNC1("ordered") : FUNC1("unordered"));
}