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
typedef  scalar_t__ u_int ;
struct utf8_data {char const* data; int size; scalar_t__ width; int /*<<< orphan*/  have; } ;
typedef  enum utf8_state { ____Placeholder_utf8_state } utf8_state ;

/* Variables and functions */
 int UTF8_DONE ; 
 int UTF8_MORE ; 
 char* FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (struct utf8_data*,char const) ; 
 int FUNC5 (struct utf8_data*,char const) ; 
 char* FUNC6 (scalar_t__) ; 
 char* FUNC7 (char const*) ; 

char *
FUNC8(const char *expanded, u_int limit)
{
	char			*copy, *out;
	const char		*cp = expanded, *end;
	u_int			 width = 0, total_width, skip;
	struct utf8_data	 ud;
	enum utf8_state		 more;

	total_width = FUNC1(expanded);
	if (total_width <= limit)
		return (FUNC7(expanded));
	skip = total_width - limit;

	out = copy = FUNC6(FUNC3(expanded) + 1);
	while (*cp != '\0') {
		if (cp[0] == '#' && cp[1] == '[') {
			end = FUNC0(cp + 2, "]");
			if (end == NULL)
				break;
			FUNC2(out, cp, end + 1 - cp);
			out += (end + 1 - cp);
			cp = end + 1;
		} else if ((more = FUNC5(&ud, *cp)) == UTF8_MORE) {
			while (*++cp != '\0' && more == UTF8_MORE)
				more = FUNC4(&ud, *cp);
			if (more == UTF8_DONE) {
				if (width >= skip) {
					FUNC2(out, ud.data, ud.size);
					out += ud.size;
				}
				width += ud.width;
			} else
				cp -= ud.have;
		} else if (*cp > 0x1f && *cp < 0x7f) {
			if (width >= skip)
				*out++ = *cp;
			width++;
			cp++;
		} else
			cp++;
	}
	*out = '\0';
	return (copy);
}