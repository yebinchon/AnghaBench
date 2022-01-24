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
typedef  int /*<<< orphan*/ * PULONG ;
typedef  scalar_t__ PDEBUG_MODULE ;
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ pCurrentMod ; 

BOOLEAN FUNC6(LPSTR pToken,PULONG pValue)
{
    LPSTR pEx;
    char temp[64];
    LPSTR p;
	PDEBUG_MODULE pModFound;

    FUNC0((0,"ConvertTokenToSymbol()\n"));

    FUNC4(temp,pToken);
    p = temp;

    // test for module!symbol string
    pEx = FUNC3(p,'!');
    if(pEx)
    {
        FUNC0((0,"ConvertTokenToSymbol(): module!symbol syntax detected\n"));
        // terminate module name
        *pEx = 0;
        // now we have two pointers
        pEx++;
        FUNC0((0,"ConvertTokenToSymbol(): module = %s symbol = %s\n",p,pEx));

		if( (pModFound=FUNC2(p)) )
        {
            if((*pValue = FUNC1(pEx,pModFound)))
                return TRUE;
        }
    }
    else
    {
        if(pCurrentMod)
        {
            if((*pValue = FUNC1(p,pCurrentMod)))
                return TRUE;
        }
    	return FUNC5(p,pValue);
    }
    return FALSE;
}