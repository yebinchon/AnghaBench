#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  size_t* PULONG ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int DEBUG_MODULE_NAME_LEN ; 
 size_t FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__** apSymbols ; 

BOOLEAN FUNC5(LPSTR p,PULONG pValue)
{
    ULONG i;
	char temp[DEBUG_MODULE_NAME_LEN];

    for(i=0;i<FUNC1(apSymbols);i++)
    {
        if(apSymbols[i])
        {
			FUNC0(temp,apSymbols[i]->name);
            if(FUNC2(p,temp)==0)
            {
                *pValue = (ULONG)apSymbols[i];
                return TRUE;
            }
        }
    }

    for(i=0;i<FUNC1(apSymbols);i++)
    {
        if(apSymbols[i])
        {
			FUNC0(temp,apSymbols[i]->name);
            if(FUNC4(temp,p,FUNC3(p))==0)
            {
                *pValue = (ULONG)apSymbols[i];
                return TRUE;
            }
        }
    }

	return FALSE;
}