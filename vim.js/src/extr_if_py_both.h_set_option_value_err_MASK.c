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
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int FAIL ; 
 int OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(char_u *key, int numval, char_u *stringval, int opt_flags)
{
    char_u	*errmsg;

    if ((errmsg = FUNC2(key, numval, stringval, opt_flags)))
    {
	if (FUNC1())
	    return FAIL;
	FUNC0((char *)errmsg);
	return FAIL;
    }
    return OK;
}