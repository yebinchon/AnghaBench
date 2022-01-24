#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* hrule ) (struct buf*,int /*<<< orphan*/ ) ;scalar_t__ blockhtml; } ;
struct sd_markdown {scalar_t__ max_nesting; int ext_flags; int /*<<< orphan*/  opaque; TYPE_2__ cb; TYPE_1__* work_bufs; } ;
struct buf {int dummy; } ;
struct TYPE_3__ {scalar_t__ size; } ;

/* Variables and functions */
 size_t BUFFER_BLOCK ; 
 size_t BUFFER_SPAN ; 
 int MKDEXT_DISABLE_INDENTED_CODE ; 
 int MKDEXT_FENCED_CODE ; 
 int MKDEXT_TABLES ; 
 int /*<<< orphan*/  MKD_LIST_ORDERED ; 
 scalar_t__ FUNC0 (struct sd_markdown*,char*,size_t) ; 
 size_t FUNC1 (char*,size_t) ; 
 scalar_t__ FUNC2 (char*,size_t) ; 
 scalar_t__ FUNC3 (struct buf*,struct sd_markdown*,char*,size_t) ; 
 scalar_t__ FUNC4 (struct buf*,struct sd_markdown*,char*,size_t) ; 
 scalar_t__ FUNC5 (struct buf*,struct sd_markdown*,char*,size_t) ; 
 size_t FUNC6 (struct buf*,struct sd_markdown*,char*,size_t) ; 
 size_t FUNC7 (struct buf*,struct sd_markdown*,char*,size_t,int) ; 
 scalar_t__ FUNC8 (struct buf*,struct sd_markdown*,char*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct buf*,struct sd_markdown*,char*,size_t) ; 
 size_t FUNC10 (struct buf*,struct sd_markdown*,char*,size_t) ; 
 scalar_t__ FUNC11 (char*,size_t) ; 
 scalar_t__ FUNC12 (char*,size_t) ; 
 scalar_t__ FUNC13 (char*,size_t) ; 
 scalar_t__ FUNC14 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size)
{
	size_t beg, end, i;
	uint8_t *txt_data;
	beg = 0;

	if (rndr->work_bufs[BUFFER_SPAN].size +
		rndr->work_bufs[BUFFER_BLOCK].size > rndr->max_nesting)
		return;

	while (beg < size) {
		txt_data = data + beg;
		end = size - beg;

		if (FUNC0(rndr, txt_data, end))
			beg += FUNC3(ob, rndr, txt_data, end);

		else if (data[beg] == '<' && rndr->cb.blockhtml &&
				(i = FUNC7(ob, rndr, txt_data, end, 1)) != 0)
			beg += i;

		else if ((i = FUNC1(txt_data, end)) != 0)
			beg += i;

		else if (FUNC2(txt_data, end)) {
			if (rndr->cb.hrule)
				rndr->cb.hrule(ob, rndr->opaque);

			while (beg < size && data[beg] != '\n')
				beg++;

			beg++;
		}

		else if ((rndr->ext_flags & MKDEXT_FENCED_CODE) != 0 &&
			(i = FUNC6(ob, rndr, txt_data, end)) != 0)
			beg += i;

		else if ((rndr->ext_flags & MKDEXT_TABLES) != 0 &&
			(i = FUNC10(ob, rndr, txt_data, end)) != 0)
			beg += i;

		else if (FUNC13(txt_data, end))
			beg += FUNC5(ob, rndr, txt_data, end);

		else if (!(rndr->ext_flags & MKDEXT_DISABLE_INDENTED_CODE) && FUNC11(txt_data, end))
			beg += FUNC4(ob, rndr, txt_data, end);

		else if (FUNC14(txt_data, end))
			beg += FUNC8(ob, rndr, txt_data, end, 0);

		else if (FUNC12(txt_data, end))
			beg += FUNC8(ob, rndr, txt_data, end, MKD_LIST_ORDERED);

		else
			beg += FUNC9(ob, rndr, txt_data, end);
	}
}