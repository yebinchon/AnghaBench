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
struct nls_table {int /*<<< orphan*/  owner; int /*<<< orphan*/  charset; struct nls_table* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  nls_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nls_table* tables ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nls_table *FUNC4(char *charset)
{
	struct nls_table *nls;
	FUNC1(&nls_lock);
	for (nls = tables; nls; nls = nls->next)
		if (! FUNC0(nls->charset, charset))
			break;
	if (nls && !FUNC3(nls->owner))
		nls = NULL;
	FUNC2(&nls_lock);
	return nls;
}