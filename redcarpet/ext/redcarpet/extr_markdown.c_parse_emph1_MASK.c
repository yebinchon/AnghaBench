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
struct TYPE_2__ {int (* underline ) (struct buf*,struct buf*,int /*<<< orphan*/ ) ;int (* emphasis ) (struct buf*,struct buf*,int /*<<< orphan*/ ) ;} ;
struct sd_markdown {int ext_flags; int /*<<< orphan*/  opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_SPAN ; 
 int MKDEXT_NO_INTRA_EMPHASIS ; 
 int MKDEXT_UNDERLINE ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 size_t FUNC2 (char*,size_t,char) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,struct sd_markdown*,char*,size_t) ; 
 struct buf* FUNC4 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct buf*,struct buf*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct buf*,struct buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC8(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size, uint8_t c)
{
	size_t i = 0, len;
	struct buf *work = 0;
	int r;

	/* skipping one symbol if coming from emph3 */
	if (size > 1 && data[0] == c && data[1] == c) i = 1;

	while (i < size) {
		len = FUNC2(data + i, size - i, c);
		if (!len) return 0;
		i += len;
		if (i >= size) return 0;

		if (data[i] == c && !FUNC1(data[i - 1])) {

			if (rndr->ext_flags & MKDEXT_NO_INTRA_EMPHASIS) {
				if (i + 1 < size && FUNC0(data[i + 1]))
					continue;
			}

			work = FUNC4(rndr, BUFFER_SPAN);
			FUNC3(work, rndr, data, i);

			if (rndr->ext_flags & MKDEXT_UNDERLINE && c == '_')
				r = rndr->cb.underline(ob, work, rndr->opaque);
			else
				r = rndr->cb.emphasis(ob, work, rndr->opaque);

			FUNC5(rndr, BUFFER_SPAN);
			return r ? i + 1 : 0;
		}
	}

	return 0;
}