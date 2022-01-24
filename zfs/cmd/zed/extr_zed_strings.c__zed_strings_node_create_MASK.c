#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* val; void* key; } ;
typedef  TYPE_1__ zed_strings_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 void* FUNC3 (char const*) ; 

zed_strings_node_t *
FUNC4(const char *key, const char *val)
{
	zed_strings_node_t *np;

	FUNC1(val != NULL);

	np = FUNC2(1, sizeof (*np));
	if (!np)
		return (NULL);

	np->val = FUNC3(val);
	if (!np->val)
		goto nomem;

	if (key) {
		np->key = FUNC3(key);
		if (!np->key)
			goto nomem;
	} else {
		np->key = np->val;
	}
	return (np);

nomem:
	FUNC0(np);
	return (NULL);
}