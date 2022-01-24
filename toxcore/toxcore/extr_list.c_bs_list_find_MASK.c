#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int* ids; } ;
typedef  TYPE_1__ BS_LIST ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*,int /*<<< orphan*/  const*) ; 

int FUNC1(const BS_LIST *list, const uint8_t *data)
{
    int r = FUNC0(list, data);

    //return only -1 and positive values
    if (r < 0) {
        return -1;
    }

    return list->ids[r];
}