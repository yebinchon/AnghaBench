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
struct buf {int size; char* data; } ;

/* Variables and functions */
 int MKD_LIST_ORDERED ; 
 int /*<<< orphan*/  FUNC0 (struct buf*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char) ; 

__attribute__((used)) static void
FUNC2(struct buf *ob, const struct buf *text, int flags, void *opaque)
{
	if (ob->size) FUNC1(ob, '\n');
	FUNC0(ob, flags & MKD_LIST_ORDERED ? "<ol>\n" : "<ul>\n", 5);
	if (text) FUNC0(ob, text->data, text->size);
	FUNC0(ob, flags & MKD_LIST_ORDERED ? "</ol>\n" : "</ul>\n", 6);
}