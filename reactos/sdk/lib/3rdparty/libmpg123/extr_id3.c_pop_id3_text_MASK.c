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
typedef  int /*<<< orphan*/  mpg123_text ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(mpg123_text **list, size_t *size)
{
	mpg123_text *x;
	if(*size < 1) return;

	FUNC1(&((*list)[*size-1]));
	if(*size > 1)
	{
		x = FUNC2(*list, sizeof(mpg123_text)*(*size-1));
		if(x != NULL){ *list  = x; *size -= 1; }
	}
	else
	{
		FUNC0(*list);
		*list = NULL;
		*size = 0;
	}
}