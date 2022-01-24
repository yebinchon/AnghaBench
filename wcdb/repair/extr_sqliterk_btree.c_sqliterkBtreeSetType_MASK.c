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
typedef  int /*<<< orphan*/  sqliterk_btree_type ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ sqliterk_btree ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int SQLITERK_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(sqliterk_btree *btree, sqliterk_btree_type type)
{
    if (!btree) {
        return SQLITERK_MISUSE;
    }
    if (FUNC0(btree->type)) {
        // You can only set the type manually when the type is not a system type
        return SQLITERK_MISUSE;
    }
    btree->type = type;
    return SQLITERK_OK;
}