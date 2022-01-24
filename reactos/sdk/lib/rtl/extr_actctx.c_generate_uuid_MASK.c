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
struct TYPE_3__ {int Data3; int* Data4; } ;
typedef  TYPE_1__ GUID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(ULONG *seed, GUID *guid)
{
    ULONG *ptr = (ULONG*)guid;
    int i;

    /* GUID is 16 bytes long */
    for (i = 0; i < sizeof(GUID)/sizeof(ULONG); i++, ptr++)
        *ptr = FUNC0(seed);

    guid->Data3 &= 0x0fff;
    guid->Data3 |= (4 << 12);
    guid->Data4[0] &= 0x3f;
    guid->Data4[0] |= 0x80;
}