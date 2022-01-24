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
struct TYPE_5__ {int n; int capacity; int* data; int element_size; int* ids; } ;
typedef  TYPE_1__ BS_LIST ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int const) ; 

int FUNC4(BS_LIST *list, const uint8_t *data, int id)
{
    //find where the new element should be inserted
    //see: return value of find()
    int i = FUNC0(list, data);

    if (i >= 0) {
        //already in list
        return 0;
    }

    i = ~i;

    //increase the size of the arrays if needed
    if (list->n == list->capacity) {
        // 1.5 * n + 1
        const uint32_t new_capacity = list->n + list->n / 2 + 1;

        if (!FUNC3(list, new_capacity)) {
            return 0;
        }

        list->capacity = new_capacity;
    }

    //insert data to element array
    FUNC2(list->data + (i + 1) * list->element_size, list->data + i * list->element_size,
            (list->n - i) * list->element_size);
    FUNC1(list->data + i * list->element_size, data, list->element_size);

    //insert id to id array
    FUNC2(&list->ids[i + 1], &list->ids[i], (list->n - i) * sizeof(int));
    list->ids[i] = id;

    //increase n
    list->n++;

    return 1;
}