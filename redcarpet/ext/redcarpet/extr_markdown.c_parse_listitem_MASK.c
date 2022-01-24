#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* listitem ) (struct buf*,struct buf*,int,int /*<<< orphan*/ ) ;} ;
struct sd_markdown {int ext_flags; int /*<<< orphan*/  opaque; TYPE_1__ cb; } ;
struct buf {size_t size; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_SPAN ; 
 int MKDEXT_FENCED_CODE ; 
 int MKD_LIST_ORDERED ; 
 int MKD_LI_BLOCK ; 
 int MKD_LI_END ; 
 int /*<<< orphan*/  FUNC0 (struct buf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char) ; 
 scalar_t__ FUNC2 (char*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*,struct sd_markdown*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*,struct sd_markdown*,scalar_t__,size_t) ; 
 size_t FUNC7 (char*,size_t) ; 
 size_t FUNC8 (char*,size_t) ; 
 struct buf* FUNC9 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct buf*,struct buf*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC12(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size, int *flags)
{
	struct buf *work = 0, *inter = 0;
	size_t beg = 0, end, pre, sublist = 0, orgpre = 0, i;
	int in_empty = 0, has_inside_empty = 0, in_fence = 0;

	/* keeping track of the first indentation prefix */
	while (orgpre < 3 && orgpre < size && data[orgpre] == ' ')
		orgpre++;

	beg = FUNC8(data, size);
	if (!beg)
		beg = FUNC7(data, size);

	if (!beg)
		return 0;

	/* skipping to the beginning of the following line */
	end = beg;
	while (end < size && data[end - 1] != '\n')
		end++;

	/* getting working buffers */
	work = FUNC9(rndr, BUFFER_SPAN);
	inter = FUNC9(rndr, BUFFER_SPAN);

	/* putting the first line into the working buffer */
	FUNC0(work, data + beg, end - beg);
	beg = end;

	/* process the following lines */
	while (beg < size) {
		size_t has_next_uli = 0, has_next_oli = 0;

		end++;

		while (end < size && data[end - 1] != '\n')
			end++;

		/* process an empty line */
		if (FUNC3(data + beg, end - beg)) {
			in_empty = 1;
			beg = end;
			continue;
		}

		/* calculating the indentation */
		i = 0;
		while (i < 4 && beg + i < end && data[beg + i] == ' ')
			i++;

		pre = i;

		if (rndr->ext_flags & MKDEXT_FENCED_CODE) {
			if (FUNC2(data + beg + i, end - beg - i, NULL) != 0)
				in_fence = !in_fence;
		}

		/* Only check for new list items if we are **not** inside
		 * a fenced code block */
		if (!in_fence) {
			has_next_uli = FUNC8(data + beg + i, end - beg - i);
			has_next_oli = FUNC7(data + beg + i, end - beg - i);
		}

		/* checking for ul/ol switch */
		if (in_empty && (
			((*flags & MKD_LIST_ORDERED) && has_next_uli) ||
			(!(*flags & MKD_LIST_ORDERED) && has_next_oli))){
			*flags |= MKD_LI_END;
			break; /* the following item must have same list type */
		}

		/* checking for a new item */
		if ((has_next_uli && !FUNC4(data + beg + i, end - beg - i)) || has_next_oli) {
			if (in_empty)
				has_inside_empty = 1;

			if (pre == orgpre) /* the following item must have */
				break;             /* the same indentation */

			if (!sublist)
				sublist = work->size;
		}
		/* joining only indented stuff after empty lines */
		else if (in_empty && i < 4 && data[beg] != '\t') {
			*flags |= MKD_LI_END;
			break;
		}
		else if (in_empty) {
			FUNC1(work, '\n');
			has_inside_empty = 1;
		}

		in_empty = 0;

		/* adding the line without prefix into the working buffer */
		FUNC0(work, data + beg + i, end - beg - i);
		beg = end;
	}

	/* render of li contents */
	if (has_inside_empty)
		*flags |= MKD_LI_BLOCK;

	if (*flags & MKD_LI_BLOCK) {
		/* intermediate render of block li */
		if (sublist && sublist < work->size) {
			FUNC5(inter, rndr, work->data, sublist);
			FUNC5(inter, rndr, work->data + sublist, work->size - sublist);
		}
		else
			FUNC5(inter, rndr, work->data, work->size);
	} else {
		/* intermediate render of inline li */
		if (sublist && sublist < work->size) {
			FUNC6(inter, rndr, work->data, sublist);
			FUNC5(inter, rndr, work->data + sublist, work->size - sublist);
		}
		else
			FUNC6(inter, rndr, work->data, work->size);
	}

	/* render of li itself */
	if (rndr->cb.listitem)
		rndr->cb.listitem(ob, inter, *flags, rndr->opaque);

	FUNC10(rndr, BUFFER_SPAN);
	FUNC10(rndr, BUFFER_SPAN);
	return beg;
}