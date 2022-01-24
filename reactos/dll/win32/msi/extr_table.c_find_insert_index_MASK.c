#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* table; } ;
struct TYPE_5__ {int row_count; } ;
typedef  TYPE_2__ MSITABLEVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2( MSITABLEVIEW *tv, MSIRECORD *rec )
{
    int idx, c, low = 0, high = tv->table->row_count - 1;

    FUNC0("%p %p\n", tv, rec);

    while (low <= high)
    {
        idx = (low + high) / 2;
        c = FUNC1( tv, idx, rec );

        if (c < 0)
            high = idx - 1;
        else if (c > 0)
            low = idx + 1;
        else
        {
            FUNC0("found %u\n", idx);
            return idx;
        }
    }
    FUNC0("found %u\n", high + 1);
    return high + 1;
}