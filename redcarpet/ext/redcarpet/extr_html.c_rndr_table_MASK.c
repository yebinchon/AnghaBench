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
struct buf {scalar_t__ size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,char) ; 

__attribute__((used)) static void
FUNC3(struct buf *ob, const struct buf *header, const struct buf *body, void *opaque)
{
	if (ob->size) FUNC2(ob, '\n');
	FUNC0(ob, "<table><thead>\n");
	if (header)
		FUNC1(ob, header->data, header->size);
	FUNC0(ob, "</thead><tbody>\n");
	if (body)
		FUNC1(ob, body->data, body->size);
	FUNC0(ob, "</tbody></table>\n");
}