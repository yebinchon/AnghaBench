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
struct str_list_entry_t {char* str; int /*<<< orphan*/  entry; } ;
typedef  int /*<<< orphan*/  str_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static str_list_t *FUNC3(str_list_t *list, char *str)
{
    struct str_list_entry_t *entry;

    if (!str) return list;
    if (!list)
    {
        list = FUNC2( sizeof(*list) );
        FUNC1( list );
    }
    entry = FUNC2( sizeof(*entry) );
    entry->str = str;
    FUNC0( list, &entry->entry );
    return list;
}