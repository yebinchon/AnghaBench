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
struct TYPE_3__ {int /*<<< orphan*/  Item; int /*<<< orphan*/  ItemType; } ;
typedef  int /*<<< orphan*/  TW_UINT32 ;
typedef  int /*<<< orphan*/  TW_UINT16 ;
typedef  TYPE_1__ TW_ONEVALUE ;
typedef  scalar_t__ TW_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static TW_HANDLE FUNC4(TW_UINT32 val, TW_UINT16 type)
{
    TW_HANDLE hcontainer;
    TW_ONEVALUE *onev;
    hcontainer = FUNC0(0, sizeof(*onev));
    if (hcontainer)
    {
        onev = FUNC2(hcontainer);
        if (onev)
        {
            onev->ItemType = type;
            onev->Item = val;
            FUNC3(hcontainer);
        }
        else
        {
            FUNC1(hcontainer);
            hcontainer = 0;
        }
    }
    return hcontainer;
}