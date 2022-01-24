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
typedef  int ULONG ;
typedef  char* LPSTR ;
typedef  int LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char) ; 

LONG FUNC3(LPSTR p)
{
    LONG lMinus = 1,lBase;
    ULONG lNumber = 0;

    FUNC0((0,"ExtractNumber(): %s\n",p));

    if(!FUNC1((ULONG)p) )
    {
        FUNC0((1,"ExtractNumber(): [1] invalid page %x hit!\n",p));
        return 0;
    }

    if(*p == '-')
    {
        lMinus = -1;
        p++;
    }

    if(!FUNC1((ULONG)p) )
    {
        FUNC0((1,"ExtractNumber(): [2] invalid page %x hit!\n",p));
        return 0;
    }

    if(*p != '0') // non-octal -> decimal number
        lBase = 10;
    else
        lBase = 8;

    if(!FUNC1((ULONG)p) )
    {
        FUNC0((1,"ExtractNumber(): [3] invalid page %x hit!\n",p));
        return 0;
    }

    while(FUNC2(*p))
    {
        lNumber *= lBase;
        lNumber += *p-'0';
        p++;
        if(!FUNC1((ULONG)p) )
        {
            FUNC0((1,"ExtractNumber(): [4] invalid page %x hit!\n",p));
            return 0;
        }
    }

    return (lNumber*lMinus);
}