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
typedef  int /*<<< orphan*/  ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

char* FUNC2(char* s,char c)
{
    while(FUNC1((ULONG)s) && *s)
    {
        if(*s == c)
            return s;
        s++;
    }
#ifdef DEBUG
    if(!IsAddressValid((ULONG)s) )
    {
        DPRINT((0,"PICE_strchr(): ********************\n"));
        DPRINT((0,"PICE_strchr(): EXCEPTION @ %.8X\n",(ULONG)s));
        DPRINT((0,"PICE_strchr(): ********************\n"));
    }
#endif

    return NULL;
}