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
typedef  long wchar_t ;
struct utf8_data {scalar_t__ size; } ;
struct cmdq_item {int dummy; } ;
struct cmd_find_state {int dummy; } ;
struct client {int dummy; } ;
struct args {char** argv; } ;
typedef  long key_code ;

/* Variables and functions */
 long KEYC_LITERAL ; 
 long KEYC_NONE ; 
 long KEYC_UNKNOWN ; 
 scalar_t__ UTF8_DONE ; 
 int FUNC0 (struct args*,char) ; 
 struct cmdq_item* FUNC1 (struct client*,struct cmd_find_state*,struct cmdq_item*,long) ; 
 int /*<<< orphan*/  FUNC2 (struct utf8_data*) ; 
 long FUNC3 (char const*) ; 
 long FUNC4 (char const*,char**,int) ; 
 scalar_t__ FUNC5 (struct utf8_data*,long*) ; 
 struct utf8_data* FUNC6 (char const*) ; 

__attribute__((used)) static struct cmdq_item *
FUNC7(struct client *c, struct cmd_find_state *fs,
    struct cmdq_item *item, struct args *args, int i)
{
	const char		*s = args->argv[i];
	struct utf8_data	*ud, *uc;
	wchar_t			 wc;
	key_code		 key;
	char			*endptr;
	long			 n;
	int			 literal;

	if (FUNC0(args, 'H')) {
		n = FUNC4(s, &endptr, 16);
		if (*s =='\0' || n < 0 || n > 0xff || *endptr != '\0')
			return (item);
		return (FUNC1(c, fs, item, KEYC_LITERAL|n));
	}

	literal = FUNC0(args, 'l');
	if (!literal) {
		key = FUNC3(s);
		if (key != KEYC_NONE && key != KEYC_UNKNOWN)
			return (FUNC1(c, fs, item, key));
		literal = 1;
	}
	if (literal) {
		ud = FUNC6(s);
		for (uc = ud; uc->size != 0; uc++) {
			if (FUNC5(uc, &wc) != UTF8_DONE)
				continue;
			item = FUNC1(c, fs, item, wc);
		}
		FUNC2(ud);
	}
	return (item);
}