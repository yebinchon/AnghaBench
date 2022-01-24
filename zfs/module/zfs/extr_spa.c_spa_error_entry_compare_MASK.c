#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
struct TYPE_2__ {int /*<<< orphan*/  se_bookmark; } ;
typedef  TYPE_1__ spa_error_entry_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(const void *a, const void *b)
{
	const spa_error_entry_t *sa = (const spa_error_entry_t *)a;
	const spa_error_entry_t *sb = (const spa_error_entry_t *)b;
	int ret;

	ret = FUNC1(&sa->se_bookmark, &sb->se_bookmark,
	    sizeof (zbookmark_phys_t));

	return (FUNC0(ret));
}