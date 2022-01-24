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
typedef  int /*<<< orphan*/  strbuf_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int encode_sparse_ratio; int encode_sparse_safe; int /*<<< orphan*/  encode_sparse_convert; } ;
typedef  TYPE_1__ json_config_t ;

/* Variables and functions */
 scalar_t__ LUA_TNUMBER ; 
 double FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 double FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(lua_State *l, json_config_t *cfg, strbuf_t *json)
{
    double k;
    int max;
    int items;

    max = 0;
    items = 0;

    FUNC4(l);
    /* table, startkey */
    while (FUNC2(l, -2) != 0) {
        /* table, key, value */
        if (FUNC6(l, -2) == LUA_TNUMBER &&
            (k = FUNC5(l, -2))) {
            /* Integer >= 1 ? */
            if (FUNC0(k) == k && k >= 1) {
                if (k > max)
                    max = k;
                items++;
                FUNC3(l, 1);
                continue;
            }
        }

        /* Must not be an array (non integer key) */
        FUNC3(l, 2);
        return -1;
    }

    /* Encode excessively sparse arrays as objects (if enabled) */
    if (cfg->encode_sparse_ratio > 0 &&
        max > items * cfg->encode_sparse_ratio &&
        max > cfg->encode_sparse_safe) {
        if (!cfg->encode_sparse_convert)
            FUNC1(l, cfg, json, -1, "excessively sparse array");

        return -1;
    }

    return max;
}