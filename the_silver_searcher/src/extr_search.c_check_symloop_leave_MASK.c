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
typedef  int /*<<< orphan*/  symdir_t ;
struct TYPE_4__ {scalar_t__ dev; scalar_t__ ino; } ;
typedef  TYPE_1__ dirkey_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int SYMLOOP_ERROR ; 
 int SYMLOOP_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hh ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  symhash ; 

__attribute__((used)) static int FUNC4(dirkey_t *dirkey) {
#ifdef _WIN32
    return SYMLOOP_OK;
#else
    symdir_t *item_found = NULL;

    if (dirkey->dev == 0 && dirkey->ino == 0) {
        return SYMLOOP_ERROR;
    }

    FUNC1(hh, symhash, dirkey, sizeof(dirkey_t), item_found);
    if (!item_found) {
        FUNC3("item not found! weird stuff...\n");
        return SYMLOOP_ERROR;
    }

    FUNC0(hh, symhash, item_found);
    FUNC2(item_found);
    return SYMLOOP_OK;
#endif
}