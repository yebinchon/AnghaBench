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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static char *
FUNC4(
	char		*ap)		/* original acceleratorText */
{
    char	buf[256];	/* build in temp buffer */
    char	*shift;		/* shift string of "" */

    if (ap == NULL)
	return NULL;

    /* If the accelerator is shifted use the vim form */
    if (FUNC2("Shift+", ap, 6) == 0)
    {
	shift = "S-";
	ap += 6;
    }
    else
	shift = "";

    if (*ap == 'F' && FUNC0(&ap[1]) > 0)
    {
	FUNC3(buf, sizeof(buf), "<%s%s>", shift, ap);
	return FUNC1(buf);
    }
    else
	return NULL;
}