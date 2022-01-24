#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  enum usp10_script_table { ____Placeholder_usp10_script_table } usp10_script_table ;
struct TYPE_14__ {int /*<<< orphan*/  const** table; } ;
struct TYPE_13__ {TYPE_1__* ScriptRecord; int /*<<< orphan*/  ScriptCount; } ;
struct TYPE_12__ {size_t script_count; } ;
struct TYPE_11__ {int /*<<< orphan*/  Script; int /*<<< orphan*/ * ScriptTag; } ;
typedef  TYPE_2__ ScriptCache ;
typedef  size_t SIZE_T ;
typedef  TYPE_3__ OT_ScriptList ;
typedef  int /*<<< orphan*/  OPENTYPE_TAG ;
typedef  TYPE_4__ LoadedScript ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_4__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(ScriptCache *script_cache,
        enum usp10_script_table table, const OT_ScriptList *list)
{
    SIZE_T initial_count, count, i;
    LoadedScript *script;
    OPENTYPE_TAG tag;

    FUNC2("script_cache %p, table %#x, list %p.\n", script_cache, table, list);

    if (!(count = FUNC0(list->ScriptCount)))
        return;

    FUNC2("Adding %lu scripts.\n", count);

    initial_count = script_cache->script_count;
    for (i = 0; i < count; ++i)
    {
        tag = FUNC1(list->ScriptRecord[i].ScriptTag[0],
                list->ScriptRecord[i].ScriptTag[1],
                list->ScriptRecord[i].ScriptTag[2],
                list->ScriptRecord[i].ScriptTag[3]);

        if (!(initial_count && (script = FUNC4(script_cache, tag)))
                && !(script = FUNC3(script_cache, tag)))
            return;

        script->table[table] = (const BYTE *)list + FUNC0(list->ScriptRecord[i].Script);
    }
}