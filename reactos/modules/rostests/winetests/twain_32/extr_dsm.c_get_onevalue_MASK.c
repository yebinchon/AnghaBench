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
struct TYPE_3__ {int /*<<< orphan*/  ItemType; int /*<<< orphan*/  Item; } ;
typedef  int /*<<< orphan*/  TW_UINT32 ;
typedef  int /*<<< orphan*/  TW_UINT16 ;
typedef  TYPE_1__ TW_ONEVALUE ;
typedef  int /*<<< orphan*/  TW_HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC2(TW_HANDLE hcontainer, TW_UINT32 *ret, TW_UINT16 *type)
{
    TW_ONEVALUE *onev;
    onev = FUNC0(hcontainer);
    if (onev)
    {
        *ret = onev->Item;
        if (type)
            *type = onev->ItemType;
        FUNC1(hcontainer);
        return TRUE;
    }
    else
        *ret = 0;
    return FALSE;
}