#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_6__ {int /*<<< orphan*/  sharedapi; } ;
struct TYPE_5__ {int /*<<< orphan*/ * module; } ;
typedef  TYPE_1__ RedisModuleSharedAPI ;
typedef  int /*<<< orphan*/  RedisModule ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int FUNC7(RedisModule *module) {
    int count = 0;
    dictIterator *di = FUNC2(server.sharedapi);
    dictEntry *de;
    while ((de = FUNC4(di)) != NULL) {
        const char *apiname = FUNC1(de);
        RedisModuleSharedAPI *sapi = FUNC3(de);
        if (sapi->module == module) {
            FUNC0(server.sharedapi,apiname);
            FUNC6(sapi);
            count++;
        }
    }
    FUNC5(di);
    return count;
}