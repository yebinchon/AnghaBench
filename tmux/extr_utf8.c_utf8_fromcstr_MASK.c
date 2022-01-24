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
struct utf8_data {scalar_t__ size; int /*<<< orphan*/  have; } ;
typedef  enum utf8_state { ____Placeholder_utf8_state } utf8_state ;

/* Variables and functions */
 int UTF8_DONE ; 
 int UTF8_MORE ; 
 int FUNC0 (struct utf8_data*,char const) ; 
 int FUNC1 (struct utf8_data*,char const) ; 
 int /*<<< orphan*/  FUNC2 (struct utf8_data*,char const) ; 
 struct utf8_data* FUNC3 (struct utf8_data*,size_t,int) ; 

struct utf8_data *
FUNC4(const char *src)
{
	struct utf8_data	*dst;
	size_t			 n;
	enum utf8_state		 more;

	dst = NULL;

	n = 0;
	while (*src != '\0') {
		dst = FUNC3(dst, n + 1, sizeof *dst);
		if ((more = FUNC1(&dst[n], *src)) == UTF8_MORE) {
			while (*++src != '\0' && more == UTF8_MORE)
				more = FUNC0(&dst[n], *src);
			if (more == UTF8_DONE) {
				n++;
				continue;
			}
			src -= dst[n].have;
		}
		FUNC2(&dst[n], *src);
		n++;
		src++;
	}

	dst = FUNC3(dst, n + 1, sizeof *dst);
	dst[n].size = 0;
	return (dst);
}