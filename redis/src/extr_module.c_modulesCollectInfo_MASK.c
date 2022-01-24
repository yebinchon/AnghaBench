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
struct RedisModule {int /*<<< orphan*/  (* info_cb ) (TYPE_1__*,int) ;} ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_4__ {int member_3; int sections; int /*<<< orphan*/  info; scalar_t__ in_dict_field; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; struct RedisModule* member_0; } ;
typedef  TYPE_1__ RedisModuleInfoCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 struct RedisModule* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  modules ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

sds FUNC6(sds info, sds section, int for_crash_report, int sections) {
    dictIterator *di = FUNC1(modules);
    dictEntry *de;

    while ((de = FUNC3(di)) != NULL) {
        struct RedisModule *module = FUNC2(de);
        if (!module->info_cb)
            continue;
        RedisModuleInfoCtx info_ctx = {module, section, info, sections, 0};
        module->info_cb(&info_ctx, for_crash_report);
        /* Implicitly end dicts (no way to handle errors, and we must add the newline). */
        if (info_ctx.in_dict_field)
            FUNC0(&info_ctx);
        info = info_ctx.info;
        sections = info_ctx.sections;
    }
    FUNC4(di);
    return info;
}