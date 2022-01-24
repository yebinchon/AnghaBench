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
typedef  int /*<<< orphan*/  PULONG ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  RegKeyWords ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC4(LPSTR p,PULONG pValue)
{
    char Name[256];
    ULONG count;

	FUNC0((0,"ConvertTokenToKeyword()\n"));
	count=FUNC3(p," ");
	FUNC1(Name,p,count);
	Name[count]=0;
	if(FUNC2(Name,pValue,RegKeyWords))
	{
		FUNC0((0,"ConvertTokenToKeyword(): success\n"));
		return TRUE;
	}
	return FALSE;
}