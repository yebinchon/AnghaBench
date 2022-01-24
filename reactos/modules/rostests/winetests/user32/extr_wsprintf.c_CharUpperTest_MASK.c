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
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int INT_PTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 

__attribute__((used)) static void FUNC2(void)
{
    INT_PTR i, out;
    BOOL failed = FALSE;

    for (i=0;i<256;i++)
    	{
	out = (INT_PTR)FUNC0((LPSTR)i);
	if ((out >> 16) != 0)
	   {
           failed = TRUE;
	   break;
	   }
	}
    FUNC1(!failed,"CharUpper failed - 16bit input (0x%0lx) returned 32bit result (0x%0lx)\n",i,out);
}