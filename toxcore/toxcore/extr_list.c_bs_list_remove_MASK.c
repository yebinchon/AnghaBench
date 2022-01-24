#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int* ids; int n; int capacity; int* data; int element_size; } ;
typedef  TYPE_1__ BS_LIST ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int const) ; 

int FUNC3(BS_LIST *list, const uint8_t *data, int id)
{
    int i = FUNC0(list, data);

    if (i < 0) {
        return 0;
    }

    if (list->ids[i] != id) {
        //this should never happen
        return 0;
    }

    //decrease the size of the arrays if needed
    if (list->n < list->capacity / 2) {
        const uint32_t new_capacity = list->capacity / 2;

        if (FUNC2(list, new_capacity)) {
            list->capacity = new_capacity;
        }
    }

    list->n--;

    FUNC1(list->data + i * list->element_size, list->data + (i + 1) * list->element_size,
            (list->n - i) * list->element_size);
    FUNC1(&list->ids[i], &list->ids[i + 1], (list->n - i) * sizeof(int));

    return 1;
}