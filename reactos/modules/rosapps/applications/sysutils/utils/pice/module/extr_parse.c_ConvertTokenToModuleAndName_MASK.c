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
typedef  scalar_t__* PULONG ;
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC3(LPSTR pToken,PULONG pulModuleName,PULONG pulFunctionName)
{
    LPSTR pEx;
    char temp[64];
    LPSTR p;
    static char module_name[128];
    static char function_name[128];

    // test for module!symbol string
    FUNC2(temp,pToken);
    p = temp;

    FUNC0((0,"ConvertTokenToModuleAndName(%s)\n",p));

    pEx = FUNC1(p,'!');
    if(pEx)
    {
        FUNC0((0,"ConvertTokenToModuleAndName(): module!symbol syntax detected\n"));
        // terminate module name
        *pEx = 0;
        // now we have two pointers
        pEx++;
        FUNC0((0,"ConvertTokenToModuleAndName(): module = %s symbol = %s\n",p,pEx));
        FUNC2(module_name,p);
        FUNC2(function_name,pEx);
        *pulModuleName = (ULONG)module_name;
        *pulFunctionName = (ULONG)function_name;
        return TRUE;

    }
    return FALSE;
}