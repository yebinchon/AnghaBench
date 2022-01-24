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
struct RedisModule {int /*<<< orphan*/  filters; int /*<<< orphan*/  apiver; int /*<<< orphan*/  ver; int /*<<< orphan*/  using; int /*<<< orphan*/  usedby; } ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct RedisModule* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct RedisModule*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  modules ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

sds FUNC10(sds info) {
    dictIterator *di = FUNC0(modules);
    dictEntry *de;

    while ((de = FUNC3(di)) != NULL) {
        sds name = FUNC1(de);
        struct RedisModule *module = FUNC2(de);

        sds usedby = FUNC6(module->usedby);
        sds using = FUNC6(module->using);
        sds options = FUNC5(module);
        info = FUNC8(info,
            "module:name=%S,ver=%i,api=%i,filters=%i,"
            "usedby=%S,using=%S,options=%S\r\n",
                name, module->ver, module->apiver,
                (int)FUNC7(module->filters), usedby, using, options);
        FUNC9(usedby);
        FUNC9(using);
        FUNC9(options);
    }
    FUNC4(di);
    return info;
}