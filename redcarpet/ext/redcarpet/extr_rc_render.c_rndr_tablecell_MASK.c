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
typedef  int /*<<< orphan*/  VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  MKD_TABLE_ALIGN_CENTER 130 
#define  MKD_TABLE_ALIGN_L 129 
#define  MKD_TABLE_ALIGN_R 128 
 int /*<<< orphan*/  Qnil ; 
 int /*<<< orphan*/  FUNC2 (struct buf const*) ; 

__attribute__((used)) static void
FUNC3(struct buf *ob, const struct buf *text, int align, void *opaque)
{
	VALUE rb_align;

	switch (align) {
	case MKD_TABLE_ALIGN_L:
		rb_align = FUNC1("left");
		break;

	case MKD_TABLE_ALIGN_R:
		rb_align = FUNC1("right");
		break;

	case MKD_TABLE_ALIGN_CENTER:
		rb_align = FUNC1("center");
		break;

	default:
		rb_align = Qnil;
		break;
	}

	FUNC0("table_cell", 2, FUNC2(text), rb_align);
}