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
typedef  scalar_t__ sqliterk_btree_type ;
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ sqliterk_btree ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int SQLITERK_NOMEM ; 
 int SQLITERK_OK ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 scalar_t__ sqliterk_btree_type_system_begin ; 
 scalar_t__ sqliterk_btree_type_system_end ; 
 scalar_t__ sqliterk_btree_type_unknown ; 
 size_t FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,size_t) ; 

int FUNC7(sqliterk_btree *btree,
                         const char *name,
                         sqliterk_btree_type type)
{
    if (!btree) {
        return SQLITERK_MISUSE;
    }
    if (btree->name) {
        FUNC2(btree->name);
        btree->name = NULL;
    }
    if (name) {
        size_t length = FUNC4(name);
        btree->name = FUNC3(sizeof(char) * (length + 1));
        if (!btree->name) {
            return SQLITERK_NOMEM;
        }
        FUNC6(btree->name, name, length);
        // If it's a system btree name, then setup its b-tree type.
        sqliterk_btree_type i;
        for (i = sqliterk_btree_type_system_begin;
             i < sqliterk_btree_type_system_end; i++) {
            const char *typename = FUNC0(i);
            if (FUNC5(btree->name, typename, FUNC4(typename)) == 0) {
                btree->type = i;
                break;
            }
        }
    } else {
        btree->name = NULL;
    }
    if (!FUNC1(btree->type) &&
        type != sqliterk_btree_type_unknown) {
        btree->type = type;
    }
    return SQLITERK_OK;
}