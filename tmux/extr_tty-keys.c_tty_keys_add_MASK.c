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
struct tty_key {int /*<<< orphan*/  key; } ;
struct tty {int /*<<< orphan*/  key_tree; } ;
typedef  int /*<<< orphan*/  key_code ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 struct tty_key* FUNC4 (struct tty*,char const*,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static void
FUNC5(struct tty *tty, const char *s, key_code key)
{
	struct tty_key	*tk;
	size_t		 size;
	const char     	*keystr;

	keystr = FUNC0(key);
	if ((tk = FUNC4(tty, s, FUNC2(s), &size)) == NULL) {
		FUNC1("new key %s: 0x%llx (%s)", s, key, keystr);
		FUNC3(&tty->key_tree, s, key);
	} else {
		FUNC1("replacing key %s: 0x%llx (%s)", s, key, keystr);
		tk->key = key;
	}
}