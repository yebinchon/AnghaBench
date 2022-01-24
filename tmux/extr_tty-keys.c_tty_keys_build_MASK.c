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
union options_value {char const* string; } ;
typedef  size_t u_int ;
struct tty_default_key_raw {char* string; scalar_t__ key; int /*<<< orphan*/  code; } ;
struct tty_default_key_code {char* string; scalar_t__ key; int /*<<< orphan*/  code; } ;
struct tty {int /*<<< orphan*/  term; int /*<<< orphan*/ * key_tree; } ;
struct options_entry {int dummy; } ;
struct options_array_item {int dummy; } ;

/* Variables and functions */
 scalar_t__ KEYC_USER ; 
 int /*<<< orphan*/  global_options ; 
 size_t FUNC0 (struct tty_default_key_raw*) ; 
 struct options_array_item* FUNC1 (struct options_entry*) ; 
 size_t FUNC2 (struct options_array_item*) ; 
 union options_value* FUNC3 (struct options_array_item*) ; 
 struct options_array_item* FUNC4 (struct options_array_item*) ; 
 struct options_entry* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct tty_default_key_raw* tty_default_code_keys ; 
 struct tty_default_key_raw* tty_default_raw_keys ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(struct tty *tty)
{
	const struct tty_default_key_raw	*tdkr;
	const struct tty_default_key_code	*tdkc;
	u_int		 			 i;
	const char				*s;
	struct options_entry			*o;
	struct options_array_item		*a;
	union options_value			*ov;

	if (tty->key_tree != NULL)
		FUNC7(tty);
	tty->key_tree = NULL;

	for (i = 0; i < FUNC0(tty_default_raw_keys); i++) {
		tdkr = &tty_default_raw_keys[i];

		s = tdkr->string;
		if (*s != '\0')
			FUNC6(tty, s, tdkr->key);
	}
	for (i = 0; i < FUNC0(tty_default_code_keys); i++) {
		tdkc = &tty_default_code_keys[i];

		s = FUNC8(tty->term, tdkc->code);
		if (*s != '\0')
			FUNC6(tty, s, tdkc->key);

	}

	o = FUNC5(global_options, "user-keys");
	if (o != NULL) {
		a = FUNC1(o);
		while (a != NULL) {
			i = FUNC2(a);
			ov = FUNC3(a);
			FUNC6(tty, ov->string, KEYC_USER + i);
			a = FUNC4(a);
		}
	}
}