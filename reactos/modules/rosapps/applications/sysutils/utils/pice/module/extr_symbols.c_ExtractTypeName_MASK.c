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
typedef  size_t ULONG ;
typedef  char* LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (size_t) ; 

LPSTR FUNC2(LPSTR p)
{
    static char temp[1024];
    ULONG i;

    FUNC0((1,"ExtractTypeName(%s)\n",p));

    for(i=0;FUNC1((ULONG)p) && *p!=0 && *p!=':';i++,p++)
        temp[i] = *p;

    if(!FUNC1((ULONG)p) )
    {
        FUNC0((1,"hit invalid page %x!\n",(ULONG)p));
    }

    temp[i]=0;

    return temp;
}