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
typedef  int /*<<< orphan*/  va_list ;
typedef  char u_char ;
struct utf8_data {size_t width; scalar_t__ size; } ;
struct screen_write_ctx {int dummy; } ;
struct grid_cell {int /*<<< orphan*/  attr; struct utf8_data data; } ;
typedef  scalar_t__ ssize_t ;
typedef  enum utf8_state { ____Placeholder_utf8_state } utf8_state ;

/* Variables and functions */
 int /*<<< orphan*/  GRID_ATTR_CHARSET ; 
 int UTF8_DONE ; 
 scalar_t__ UTF8_MORE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct grid_cell*,struct grid_cell const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,struct grid_cell*,char) ; 
 size_t FUNC4 (char*) ; 
 int FUNC5 (struct utf8_data*,char) ; 
 scalar_t__ FUNC6 (struct utf8_data*,char) ; 
 int /*<<< orphan*/  FUNC7 (char**,char const*,int /*<<< orphan*/ ) ; 

void
FUNC8(struct screen_write_ctx *ctx, ssize_t maxlen,
    const struct grid_cell *gcp, const char *fmt, va_list ap)
{
	struct grid_cell	gc;
	struct utf8_data       *ud = &gc.data;
	char   		       *msg;
	u_char 		       *ptr;
	size_t		 	left, size = 0;
	enum utf8_state		more;

	FUNC1(&gc, gcp, sizeof gc);
	FUNC7(&msg, fmt, ap);

	ptr = msg;
	while (*ptr != '\0') {
		if (*ptr > 0x7f && FUNC6(ud, *ptr) == UTF8_MORE) {
			ptr++;

			left = FUNC4(ptr);
			if (left < (size_t)ud->size - 1)
				break;
			while ((more = FUNC5(ud, *ptr)) == UTF8_MORE)
				ptr++;
			ptr++;

			if (more != UTF8_DONE)
				continue;
			if (maxlen > 0 && size + ud->width > (size_t)maxlen) {
				while (size < (size_t)maxlen) {
					FUNC3(ctx, &gc, ' ');
					size++;
				}
				break;
			}
			size += ud->width;
			FUNC2(ctx, &gc);
		} else {
			if (maxlen > 0 && size + 1 > (size_t)maxlen)
				break;

			if (*ptr == '\001')
				gc.attr ^= GRID_ATTR_CHARSET;
			else if (*ptr > 0x1f && *ptr < 0x7f) {
				size++;
				FUNC3(ctx, &gc, *ptr);
			}
			ptr++;
		}
	}

	FUNC0(msg);
}