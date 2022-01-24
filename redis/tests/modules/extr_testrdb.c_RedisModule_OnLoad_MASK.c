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
struct TYPE_3__ {int version; int aux_save_triggers; int /*<<< orphan*/  aux_save; int /*<<< orphan*/  aux_load; int /*<<< orphan*/  free; int /*<<< orphan*/ * digest; int /*<<< orphan*/ * aof_rewrite; int /*<<< orphan*/  rdb_save; int /*<<< orphan*/  rdb_load; } ;
typedef  TYPE_1__ RedisModuleTypeMethods ;
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  REDISMODULE_APIVER_1 ; 
 int REDISMODULE_AUX_AFTER_RDB ; 
 int REDISMODULE_AUX_BEFORE_RDB ; 
 scalar_t__ REDISMODULE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  REDISMODULE_OPTIONS_HANDLE_IO_ERRORS ; 
 int REDISMODULE_TYPE_METHOD_VERSION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ conf_aux_count ; 
 int /*<<< orphan*/  testrdb_aux_load ; 
 int /*<<< orphan*/  testrdb_aux_save ; 
 int /*<<< orphan*/  testrdb_get_after ; 
 int /*<<< orphan*/  testrdb_get_before ; 
 int /*<<< orphan*/  testrdb_get_key ; 
 int /*<<< orphan*/  testrdb_set_after ; 
 int /*<<< orphan*/  testrdb_set_before ; 
 int /*<<< orphan*/  testrdb_set_key ; 
 int /*<<< orphan*/ * testrdb_type ; 
 int /*<<< orphan*/  testrdb_type_free ; 
 int /*<<< orphan*/  testrdb_type_load ; 
 int /*<<< orphan*/  testrdb_type_save ; 

int FUNC6(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(argv);
    FUNC0(argc);

    if (FUNC3(ctx,"testrdb",1,REDISMODULE_APIVER_1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    FUNC4(ctx, REDISMODULE_OPTIONS_HANDLE_IO_ERRORS);

    if (argc > 0)
        FUNC5(argv[0], &conf_aux_count);

    if (conf_aux_count==0) {
        RedisModuleTypeMethods datatype_methods = {
            .version = 1,
            .rdb_load = testrdb_type_load,
            .rdb_save = testrdb_type_save,
            .aof_rewrite = NULL,
            .digest = NULL,
            .free = testrdb_type_free,
        };

        testrdb_type = FUNC2(ctx, "test__rdb", 1, &datatype_methods);
        if (testrdb_type == NULL)
            return REDISMODULE_ERR;
    } else {
        RedisModuleTypeMethods datatype_methods = {
            .version = REDISMODULE_TYPE_METHOD_VERSION,
            .rdb_load = testrdb_type_load,
            .rdb_save = testrdb_type_save,
            .aof_rewrite = NULL,
            .digest = NULL,
            .free = testrdb_type_free,
            .aux_load = testrdb_aux_load,
            .aux_save = testrdb_aux_save,
            .aux_save_triggers = (conf_aux_count == 1 ?
                                  REDISMODULE_AUX_AFTER_RDB :
                                  REDISMODULE_AUX_BEFORE_RDB | REDISMODULE_AUX_AFTER_RDB)
        };

        testrdb_type = FUNC2(ctx, "test__rdb", 1, &datatype_methods);
        if (testrdb_type == NULL)
            return REDISMODULE_ERR;
    }

    if (FUNC1(ctx,"testrdb.set.before", testrdb_set_before,"deny-oom",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"testrdb.get.before", testrdb_get_before,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"testrdb.set.after", testrdb_set_after,"deny-oom",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"testrdb.get.after", testrdb_get_after,"",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"testrdb.set.key", testrdb_set_key,"deny-oom",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"testrdb.get.key", testrdb_get_key,"",1,1,1) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    return REDISMODULE_OK;
}