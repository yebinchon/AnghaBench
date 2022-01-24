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
typedef  scalar_t__ uint32_t ;
struct array {int dummy; } ;
typedef  scalar_t__ rstatus_t ;
typedef  scalar_t__ (* array_each_t ) (void*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NC_OK ; 
 void* FUNC1 (struct array*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct array*) ; 

rstatus_t
FUNC3(struct array *a, array_each_t func, void *data)
{
    uint32_t i, nelem;

    FUNC0(FUNC2(a) != 0);
    FUNC0(func != NULL);

    for (i = 0, nelem = FUNC2(a); i < nelem; i++) {
        void *elem = FUNC1(a, i);
        rstatus_t status;

        status = func(elem, data);
        if (status != NC_OK) {
            return status;
        }
    }

    return NC_OK;
}