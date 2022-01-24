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
typedef  size_t USHORT ;
typedef  int /*<<< orphan*/  ULONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t _PAGE_SIZE ; 

USHORT FUNC1(const char* s)
{
	USHORT i;

	for(i=0;FUNC0((ULONG)&s[i]) && s[i]!=0 && i<_PAGE_SIZE;i++);

    if(FUNC0((ULONG)&s[i]) && s[i]==0)
        return i;

    return 0;
}