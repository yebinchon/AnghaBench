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
struct xterm_keys_entry {int key; int /*<<< orphan*/  template; } ;
typedef  int key_code ;

/* Variables and functions */
 int KEYC_XTERM ; 
 size_t FUNC0 (struct xterm_keys_entry*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,size_t,size_t*,int*) ; 
 struct xterm_keys_entry* xterm_keys_table ; 

int
FUNC2(const char *buf, size_t len, size_t *size, key_code *key)
{
	const struct xterm_keys_entry	*entry;
	u_int				 i;
	int				 matched;
	key_code			 modifiers;

	for (i = 0; i < FUNC0(xterm_keys_table); i++) {
		entry = &xterm_keys_table[i];

		matched = FUNC1(entry->template, buf, len, size,
		    &modifiers);
		if (matched == -1)
			continue;
		if (matched == 0)
			*key = (entry->key|modifiers|KEYC_XTERM);
		return (matched);
	}
	return (-1);
}