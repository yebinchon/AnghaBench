#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_7__ {int /*<<< orphan*/  expires; int /*<<< orphan*/  dict; } ;
typedef  TYPE_2__ redisDb ;

/* Variables and functions */
 scalar_t__ DICT_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC3(redisDb *db, robj *key) {
    /* An expire may only be removed if there is a corresponding entry in the
     * main dict. Otherwise, the key will never be freed. */
    FUNC2(NULL,key,FUNC1(db->dict,key->ptr) != NULL);
    return FUNC0(db->expires,key->ptr) == DICT_OK;
}