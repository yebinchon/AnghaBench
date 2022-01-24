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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  int* LPSTR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int* pExports ; 
 int /*<<< orphan*/  FUNC5 (int*,char const*) ; 
 int* FUNC6 (int*,char const*) ; 

BOOLEAN FUNC7(const char *pFind,PULONG pValue)
{
	char temp[256];
	LPSTR pStr=NULL;
	LPSTR pExp = pExports;
	BOOLEAN bResult = FALSE;

	FUNC2();
	FUNC1(*(0,"ScanExports pValue: %x\n", pValue));
nomatch:
	if(pExports)
		pStr = FUNC6(pExp,pFind);

	if(pStr)
	{
		LPSTR p;
		ULONG state;
		LPSTR pOldStr = pStr;

		for(;(*pStr!=0x0a && *pStr!=0x0d) && (ULONG)pStr>=(ULONG)pExports;pStr--);
		pStr++;
		p = temp;
		for(;(*pStr!=0x0a && *pStr!=0x0d);)*p++=*pStr++;
		*p=0;
		p = (LPSTR) FUNC4(temp," ");
		state=0;
		while(p)
		{
			switch(state)
			{
				case 0:
					FUNC0(p,pValue);
					break;
				case 1:
					break;
				case 2:
					if(FUNC5(p,pFind)!=0)
					{
						FUNC1(*(0,"Not: %s\n", p));
						pExp = pOldStr+1;
						goto nomatch;
					}
					state = -1;
					bResult = TRUE;
		            FUNC1((0,"%s @ %x\n",pFind,*pValue));
					goto exit;
					break;
			}
			state++;
			p = (char*) FUNC4(NULL," ");
		}
	}
exit:
	FUNC1((0,"%s %x @ %x\n",pFind,pValue,*pValue));

	FUNC3();

	return bResult;
}