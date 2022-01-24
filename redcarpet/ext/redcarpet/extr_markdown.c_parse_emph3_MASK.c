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
struct TYPE_2__ {int (* triple_emphasis ) (struct buf*,struct buf*,int /*<<< orphan*/ ) ;} ;
struct sd_markdown {int /*<<< orphan*/  opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_SPAN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t FUNC1 (scalar_t__*,size_t,scalar_t__) ; 
 size_t FUNC2 (struct buf*,struct sd_markdown*,scalar_t__*,size_t,scalar_t__) ; 
 size_t FUNC3 (struct buf*,struct sd_markdown*,scalar_t__*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*,struct sd_markdown*,scalar_t__*,size_t) ; 
 struct buf* FUNC5 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sd_markdown*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct buf*,struct buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC8(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size, uint8_t c)
{
	size_t i = 0, len;
	int r;

	while (i < size) {
		len = FUNC1(data + i, size - i, c);
		if (!len) return 0;
		i += len;

		/* skip whitespace preceded symbols */
		if (data[i] != c || FUNC0(data[i - 1]))
			continue;

		if (i + 2 < size && data[i + 1] == c && data[i + 2] == c && rndr->cb.triple_emphasis) {
			/* triple symbol found */
			struct buf *work = FUNC5(rndr, BUFFER_SPAN);

			FUNC4(work, rndr, data, i);
			r = rndr->cb.triple_emphasis(ob, work, rndr->opaque);
			FUNC6(rndr, BUFFER_SPAN);
			return r ? i + 3 : 0;

		} else if (i + 1 < size && data[i + 1] == c) {
			/* double symbol found, handing over to emph1 */
			len = FUNC2(ob, rndr, data - 2, size + 2, c);
			if (!len) return 0;
			else return len - 2;

		} else {
			/* single symbol found, handing over to emph2 */
			len = FUNC3(ob, rndr, data - 1, size + 1, c);
			if (!len) return 0;
			else return len - 1;
		}
	}
	return 0;
}