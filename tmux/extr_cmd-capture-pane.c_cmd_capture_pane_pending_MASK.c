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
typedef  size_t u_int ;
struct window_pane {int dummy; } ;
struct evbuffer {int dummy; } ;
struct args {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct evbuffer*) ; 
 size_t FUNC1 (struct evbuffer*) ; 
 scalar_t__ FUNC2 (struct args*,char) ; 
 char* FUNC3 (char*,size_t*,char*,size_t) ; 
 struct evbuffer* FUNC4 (struct window_pane*) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static char *
FUNC8(struct args *args, struct window_pane *wp,
    size_t *len)
{
	struct evbuffer	*pending;
	char		*buf, *line, tmp[5];
	size_t		 linelen;
	u_int		 i;

	pending = FUNC4(wp);
	if (pending == NULL)
		return (FUNC7(""));

	line = FUNC0(pending);
	linelen = FUNC1(pending);

	buf = FUNC7("");
	if (FUNC2(args, 'C')) {
		for (i = 0; i < linelen; i++) {
			if (line[i] >= ' ' && line[i] != '\\') {
				tmp[0] = line[i];
				tmp[1] = '\0';
			} else
				FUNC6(tmp, sizeof tmp, "\\%03hho", line[i]);
			buf = FUNC3(buf, len, tmp,
			    FUNC5(tmp));
		}
	} else
		buf = FUNC3(buf, len, line, linelen);
	return (buf);
}