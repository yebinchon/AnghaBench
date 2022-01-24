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
typedef  int /*<<< orphan*/  u_char ;
struct utf8_data {size_t size; int /*<<< orphan*/  have; int /*<<< orphan*/ * data; } ;
typedef  enum utf8_state { ____Placeholder_utf8_state } utf8_state ;

/* Variables and functions */
 int UTF8_DONE ; 
 int UTF8_MORE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct utf8_data*,char const) ; 
 int FUNC2 (struct utf8_data*,char const) ; 
 char* FUNC3 (char*,char const,int,char const) ; 

int
FUNC4(char *dst, const char *src, size_t len, int flag)
{
	struct utf8_data	 ud;
	const char		*start, *end;
	enum utf8_state		 more;
	size_t			 i;

	start = dst;
	end = src + len;

	while (src < end) {
		if ((more = FUNC2(&ud, *src)) == UTF8_MORE) {
			while (++src < end && more == UTF8_MORE)
				more = FUNC1(&ud, *src);
			if (more == UTF8_DONE) {
				/* UTF-8 character finished. */
				for (i = 0; i < ud.size; i++)
					*dst++ = ud.data[i];
				continue;
			}
			/* Not a complete, valid UTF-8 character. */
			src -= ud.have;
		}
		if (src[0] == '$' && src < end - 1) {
			if (FUNC0((u_char)src[1]) ||
			    src[1] == '_' ||
			    src[1] == '{')
				*dst++ = '\\';
			*dst++ = '$';
		} else if (src < end - 1)
			dst = FUNC3(dst, src[0], flag, src[1]);
		else if (src < end)
			dst = FUNC3(dst, src[0], flag, '\0');
		src++;
	}

	*dst = '\0';
	return (dst - start);
}