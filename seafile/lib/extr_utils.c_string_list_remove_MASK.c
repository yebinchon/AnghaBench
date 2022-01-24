#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ data; struct TYPE_8__* next; } ;
typedef  TYPE_1__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

GList *
FUNC4 (GList *str_list, const char *string)
{
    FUNC2 (string != NULL, str_list);

    GList *ptr;

    for (ptr = str_list; ptr; ptr = ptr->next) {
        if (FUNC3((char *)ptr->data, string) == 0) {
            FUNC0 (ptr->data);
            return FUNC1 (str_list, ptr);
        }
    }
    return str_list;
}