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
typedef  scalar_t__ LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,char) ; 

ULONG FUNC3(LPSTR p)
{
	LPSTR pTypeNumber;
	ULONG ulTypeNumber = 0;

    FUNC0((0,"ExtractTypeNumber(%s)\n",p));

	pTypeNumber = FUNC2(p,'(');

	if(pTypeNumber)
	{
		pTypeNumber++;
		ulTypeNumber = FUNC1(pTypeNumber);
		ulTypeNumber <<= 16;
		pTypeNumber = FUNC2(p,',');
        if(pTypeNumber)
        {
		    pTypeNumber++;
		    ulTypeNumber += FUNC1(pTypeNumber);
        }
        else
        {
            ulTypeNumber = 0;
        }
	}
	return ulTypeNumber;
}