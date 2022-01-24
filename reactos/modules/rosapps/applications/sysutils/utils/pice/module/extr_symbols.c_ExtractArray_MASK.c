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
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  type; int /*<<< orphan*/  type_name; int /*<<< orphan*/  file; int /*<<< orphan*/  pSymbols; int /*<<< orphan*/  bArrayType; } ;
typedef  TYPE_1__* PVRET ;
typedef  scalar_t__ LPSTR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC7(PVRET pvr,LPSTR p)
{
    ULONG index_typenumber,type_number;
    ULONG lower_bound,upper_bound;
    LPSTR pTypeDef;

    FUNC0((1,"ExtractArray(%s)\n",p));

    // index-type index-type-number;lower;upper;element-type-number
    pvr->bArrayType = TRUE;
    p++;
    index_typenumber = FUNC3(p);
    p = FUNC5(p,';');
    if(p)
    {
        p++;
        lower_bound = FUNC1(p);
        p = FUNC5(p,';');
        if(p)
        {
            p++;

            upper_bound = FUNC1(p);
            p = FUNC5(p,';');
            if(p)
            {
                p++;

                type_number = FUNC3(p);

                FUNC0((1,"ExtractArray(): %x %x %x %x\n",index_typenumber,lower_bound,upper_bound,type_number));

                pTypeDef = FUNC4(pvr->pSymbols,type_number,pvr->file);
                if(pTypeDef)
                {
                    FUNC6(pvr->type_name,FUNC2(pTypeDef));
                    pvr->type = type_number;
                    return TRUE;
                }
            }
        }
    }
    return FALSE;
}