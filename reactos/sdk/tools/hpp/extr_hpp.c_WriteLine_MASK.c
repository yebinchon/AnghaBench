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
struct TYPE_3__ {char* pszValue; int cchValue; } ;
typedef  TYPE_1__* PDEFINE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*) ; 

void
FUNC5(char *pchLine, FILE *fileOut)
{
    char *pch, *pchLineEnd, *pchVariable;
    int len;
    PDEFINE pDefine;

    pchLineEnd = FUNC3(pchLine, '\n');
    if (pchLineEnd == 0)
        return;

    len = pchLineEnd - pchLine + 1;

    pch = pchLine;
    while (len > 0)
    {
        /* Check if there is a $ variable in the line */
        pchVariable = FUNC3(pch, '$');
        if (pchVariable && (pchVariable < pchLineEnd))
        {
            /* Write all characters up to the $ */
            FUNC2(pch, 1, pchVariable - pch, fileOut);

            /* Try to find the define */
            pDefine = FUNC0(pchVariable + 1, &pch);
            if (pDefine != 0)
            {
                /* We have a define, write the value */
                FUNC2(pDefine->pszValue, 1, pDefine->cchValue, fileOut);
            }
            else
            {
                len = FUNC4(pchVariable + 1) + 1;
                FUNC1("Could not find variable '%.*s'\n", len, pchVariable);
                FUNC2(pchVariable, 1, pch - pchVariable, fileOut);
            }

            len = pchLineEnd - pch + 1;
        }
        else
        {
            FUNC2(pch, 1, len, fileOut);
            break;
        }
    }
}