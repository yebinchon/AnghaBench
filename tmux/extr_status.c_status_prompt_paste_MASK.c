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
struct utf8_data {scalar_t__ size; scalar_t__ have; } ;
struct paste_buffer {int dummy; } ;
struct client {size_t prompt_index; struct utf8_data* prompt_saved; struct utf8_data* prompt_buffer; } ;
typedef  enum utf8_state { ____Placeholder_utf8_state } utf8_state ;

/* Variables and functions */
 int UTF8_DONE ; 
 int UTF8_MORE ; 
 int /*<<< orphan*/  FUNC0 (struct utf8_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct utf8_data*,struct utf8_data*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct utf8_data*,struct utf8_data*,size_t) ; 
 char* FUNC3 (struct paste_buffer*,size_t*) ; 
 struct paste_buffer* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct utf8_data*,char const) ; 
 int FUNC6 (struct utf8_data*,char const) ; 
 int /*<<< orphan*/  FUNC7 (struct utf8_data*,char const) ; 
 size_t FUNC8 (struct utf8_data*) ; 
 void* FUNC9 (struct utf8_data*,size_t,int) ; 

__attribute__((used)) static int
FUNC10(struct client *c)
{
	struct paste_buffer	*pb;
	const char		*bufdata;
	size_t			 size, n, bufsize;
	u_int			 i;
	struct utf8_data	*ud, *udp;
	enum utf8_state		 more;

	size = FUNC8(c->prompt_buffer);
	if (c->prompt_saved != NULL) {
		ud = c->prompt_saved;
		n = FUNC8(c->prompt_saved);
	} else {
		if ((pb = FUNC4(NULL)) == NULL)
			return (0);
		bufdata = FUNC3(pb, &bufsize);
		ud = FUNC9(NULL, bufsize + 1, sizeof *ud);
		udp = ud;
		for (i = 0; i != bufsize; /* nothing */) {
			more = FUNC6(udp, bufdata[i]);
			if (more == UTF8_MORE) {
				while (++i != bufsize && more == UTF8_MORE)
					more = FUNC5(udp, bufdata[i]);
				if (more == UTF8_DONE) {
					udp++;
					continue;
				}
				i -= udp->have;
			}
			if (bufdata[i] <= 31 || bufdata[i] >= 127)
				break;
			FUNC7(udp, bufdata[i]);
			udp++;
			i++;
		}
		udp->size = 0;
		n = udp - ud;
	}
	if (n == 0)
		return (0);

	c->prompt_buffer = FUNC9(c->prompt_buffer, size + n + 1,
	    sizeof *c->prompt_buffer);
	if (c->prompt_index == size) {
		FUNC1(c->prompt_buffer + c->prompt_index, ud,
		    n * sizeof *c->prompt_buffer);
		c->prompt_index += n;
		c->prompt_buffer[c->prompt_index].size = 0;
	} else {
		FUNC2(c->prompt_buffer + c->prompt_index + n,
		    c->prompt_buffer + c->prompt_index,
		    (size + 1 - c->prompt_index) * sizeof *c->prompt_buffer);
		FUNC1(c->prompt_buffer + c->prompt_index, ud,
		    n * sizeof *c->prompt_buffer);
		c->prompt_index += n;
	}

	if (ud != c->prompt_saved)
		FUNC0(ud);
	return (1);
}