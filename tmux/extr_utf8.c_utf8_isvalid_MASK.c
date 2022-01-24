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
struct utf8_data {int dummy; } ;
typedef  enum utf8_state { ____Placeholder_utf8_state } utf8_state ;

/* Variables and functions */
 int UTF8_DONE ; 
 int UTF8_MORE ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (struct utf8_data*,char const) ; 
 int FUNC2 (struct utf8_data*,char const) ; 

int
FUNC3(const char *s)
{
	struct utf8_data	 ud;
	const char		*end;
	enum utf8_state		 more;

	end = s + FUNC0(s);
	while (s < end) {
		if ((more = FUNC2(&ud, *s)) == UTF8_MORE) {
			while (++s < end && more == UTF8_MORE)
				more = FUNC1(&ud, *s);
			if (more == UTF8_DONE)
				continue;
			return (0);
		}
		if (*s < 0x20 || *s > 0x7e)
			return (0);
		s++;
	}
	return (1);
}