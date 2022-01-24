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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {int (* strikethrough ) (struct buf*,struct buf*,int /*<<< orphan*/ ) ;int (* highlight ) (struct buf*,struct buf*,int /*<<< orphan*/ ) ;int (* double_emphasis ) (struct buf*,struct buf*,int /*<<< orphan*/ ) ;} ;
struct sd_markdown {int /*<<< orphan*/  opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_SPAN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 size_t FUNC1 (scalar_t__*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,struct sd_markdown*,scalar_t__*,size_t) ; 
 struct buf* FUNC3 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct buf*,struct buf*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct buf*,struct buf*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct buf*,struct buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC8(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size, uint8_t c)
{
	size_t i = 0, len;
	struct buf *work = 0;
	int r;

	while (i < size) {
		len = FUNC1(data + i, size - i, c);
		if (!len) return 0;
		i += len;

		if (i + 1 < size && data[i] == c && data[i + 1] == c && i && !FUNC0(data[i - 1])) {
			work = FUNC3(rndr, BUFFER_SPAN);
			FUNC2(work, rndr, data, i);

			if (c == '~')
				r = rndr->cb.strikethrough(ob, work, rndr->opaque);
			else if (c == '=')
				r = rndr->cb.highlight(ob, work, rndr->opaque);
			else
				r = rndr->cb.double_emphasis(ob, work, rndr->opaque);

			FUNC4(rndr, BUFFER_SPAN);
			return r ? i + 2 : 0;
		}
		i++;
	}
	return 0;
}