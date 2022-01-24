#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int num; int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ warning_t ;
typedef  int /*<<< orphan*/  warning_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static warning_list_t *FUNC3(warning_list_t *list, int num)
{
    warning_t *entry;

    if(!list)
    {
        list = FUNC2( sizeof(*list) );
        FUNC1( list );
    }
    entry = FUNC2( sizeof(*entry) );
    entry->num = num;
    FUNC0( list, &entry->entry );
    return list;
}