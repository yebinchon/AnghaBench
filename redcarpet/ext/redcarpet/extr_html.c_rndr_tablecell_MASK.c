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
struct buf {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char*) ; 
 int MKD_TABLE_ALIGNMASK ; 
#define  MKD_TABLE_ALIGN_CENTER 130 
#define  MKD_TABLE_ALIGN_L 129 
#define  MKD_TABLE_ALIGN_R 128 
 int MKD_TABLE_HEADER ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct buf *ob, const struct buf *text, int flags, void *opaque)
{
	if (flags & MKD_TABLE_HEADER) {
		FUNC0(ob, "<th");
	} else {
		FUNC0(ob, "<td");
	}

	switch (flags & MKD_TABLE_ALIGNMASK) {
	case MKD_TABLE_ALIGN_CENTER:
		FUNC0(ob, " style=\"text-align: center\">");
		break;

	case MKD_TABLE_ALIGN_L:
		FUNC0(ob, " style=\"text-align: left\">");
		break;

	case MKD_TABLE_ALIGN_R:
		FUNC0(ob, " style=\"text-align: right\">");
		break;

	default:
		FUNC0(ob, ">");
	}

	if (text)
		FUNC1(ob, text->data, text->size);

	if (flags & MKD_TABLE_HEADER) {
		FUNC0(ob, "</th>\n");
	} else {
		FUNC0(ob, "</td>\n");
	}
}