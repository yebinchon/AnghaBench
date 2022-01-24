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
typedef  char char_u ;

/* Variables and functions */
 char NUL ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char) ; 

__attribute__((used)) static void
FUNC5(char_u *p, char_u *escaped)
{
    int	    l = (int)FUNC0(p);
    int	    n;

    while (*p != NUL)
    {
	if (*p == '^' && FUNC4(escaped, p[1]) != NULL)
	    FUNC2(p, p + 1, l--);
#ifdef FEAT_MBYTE
	n = (*mb_ptr2len)(p);
#else
	n = 1;
#endif
	p += n;
	l -= n;
    }
}