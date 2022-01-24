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
typedef  scalar_t__ WCHAR ;
typedef  int ULONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

ULONG FUNC2(WCHAR* s1, WCHAR* s2)
{
    ULONG result=1;

    while(FUNC0((ULONG)s1) && *s1 && // not end of string
          FUNC0((ULONG)s2) && *s2 && // not end of string
          FUNC1(*s1)==FUNC1(*s2) ) // char are the same except case
    {
        s1++;
        s2++;
    }
	// strings same length
    if(*s1==0 && *s2==0)
        result=0;

    return result;
}