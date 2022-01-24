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
struct TYPE_2__ {int /*<<< orphan*/  (* header ) (struct buf*,struct buf*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* paragraph ) (struct buf*,struct buf*,int /*<<< orphan*/ ) ;scalar_t__ blockhtml; } ;
struct sd_markdown {int ext_flags; int /*<<< orphan*/  opaque; TYPE_1__ cb; } ;
struct buf {char* member_0; size_t size; size_t data; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_BLOCK ; 
 int /*<<< orphan*/  BUFFER_SPAN ; 
 int MKDEXT_FENCED_CODE ; 
 int MKDEXT_LAX_SPACING ; 
 scalar_t__ FUNC0 (struct sd_markdown*,char*,size_t) ; 
 scalar_t__ FUNC1 (char*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,size_t) ; 
 int FUNC3 (char*,size_t) ; 
 scalar_t__ FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 scalar_t__ FUNC6 (struct buf*,struct sd_markdown*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buf*,struct sd_markdown*,size_t,int) ; 
 scalar_t__ FUNC8 (char*,size_t) ; 
 scalar_t__ FUNC9 (char*,size_t) ; 
 scalar_t__ FUNC10 (char*,size_t) ; 
 struct buf* FUNC11 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct buf*,struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct buf*,struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct buf*,struct buf*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC16(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size)
{
	size_t i = 0, end = 0;
	int level = 0, last_is_empty = 1;
	struct buf work = { data, 0, 0, 0 };

	while (i < size) {
		for (end = i + 1; end < size && data[end - 1] != '\n'; end++) /* empty */;

		if (FUNC2(data + i, size - i))
			break;

		if (!last_is_empty && (level = FUNC3(data + i, size - i)) != 0)
			break;

		last_is_empty = 0;

		if (FUNC0(rndr, data + i, size - i) ||
			FUNC4(data + i, size - i) ||
			FUNC9(data + i, size - i)) {
			end = i;
			break;
		}

		/*
		 * Early termination of a paragraph with the same logic
		 * as Markdown 1.0.0. If this logic is applied, the
		 * Markdown 1.0.3 test suite won't pass cleanly
		 *
		 * :: If the first character in a new line is not a letter,
		 * let's check to see if there's some kind of block starting
		 * here
		 */
		if ((rndr->ext_flags & MKDEXT_LAX_SPACING) && !FUNC5(data[i])) {
			if (FUNC8(data + i, size - i) ||
				FUNC10(data + i, size - i)) {
				end = i;
				break;
			}

			/* see if an html block starts here */
			if (data[i] == '<' && rndr->cb.blockhtml &&
				FUNC6(ob, rndr, data + i, size - i, 0)) {
				end = i;
				break;
			}

			/* see if a code fence starts here */
			if ((rndr->ext_flags & MKDEXT_FENCED_CODE) != 0 &&
				FUNC1(data + i, size - i, NULL) != 0) {
				end = i;
				break;
			}
		}

		i = end;
	}

	work.size = i;
	while (work.size && data[work.size - 1] == '\n')
		work.size--;

	if (!level) {
		struct buf *tmp = FUNC11(rndr, BUFFER_BLOCK);
		FUNC7(tmp, rndr, work.data, work.size);
		if (rndr->cb.paragraph)
			rndr->cb.paragraph(ob, tmp, rndr->opaque);
		FUNC12(rndr, BUFFER_BLOCK);
	} else {
		struct buf *header_work;

		if (work.size) {
			size_t beg;
			i = work.size;
			work.size -= 1;

			while (work.size && data[work.size] != '\n')
				work.size -= 1;

			beg = work.size + 1;
			while (work.size && data[work.size - 1] == '\n')
				work.size -= 1;

			if (work.size > 0) {
				struct buf *tmp = FUNC11(rndr, BUFFER_BLOCK);
				FUNC7(tmp, rndr, work.data, work.size);

				if (rndr->cb.paragraph)
					rndr->cb.paragraph(ob, tmp, rndr->opaque);

				FUNC12(rndr, BUFFER_BLOCK);
				work.data += beg;
				work.size = i - beg;
			}
			else work.size = i;
		}

		header_work = FUNC11(rndr, BUFFER_SPAN);
		FUNC7(header_work, rndr, work.data, work.size);

		if (rndr->cb.header)
			rndr->cb.header(ob, header_work, (int)level, rndr->opaque);

		FUNC12(rndr, BUFFER_SPAN);
	}

	return end;
}