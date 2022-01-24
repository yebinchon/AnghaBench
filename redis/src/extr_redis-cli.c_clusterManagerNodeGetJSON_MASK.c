#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_5__ {unsigned long replicate; scalar_t__ migrating_count; char** migrating; scalar_t__ importing_count; char** importing; scalar_t__ current_epoch; int /*<<< orphan*/  slots_count; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ clusterManagerNode ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char*,char*,...) ; 
 char* FUNC4 (char*,char*,unsigned long,...) ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 char* FUNC8 (char*,char) ; 

__attribute__((used)) static sds FUNC9(clusterManagerNode *node,
                                     unsigned long error_count)
{
    sds json = FUNC5();
    sds replicate = FUNC5();
    if (node->replicate)
        replicate = FUNC4(replicate, "\"%s\"", node->replicate);
    else
        replicate = FUNC2(replicate, "null");
    sds slots = FUNC1(node);
    sds flags = FUNC0(node);
    char *p = slots;
    while ((p = FUNC8(p, '-')) != NULL)
        *(p++) = ',';
    json = FUNC4(json,
        "  {\n"
        "    \"name\": \"%s\",\n"
        "    \"host\": \"%s\",\n"
        "    \"port\": %d,\n"
        "    \"replicate\": %s,\n"
        "    \"slots\": [%s],\n"
        "    \"slots_count\": %d,\n"
        "    \"flags\": \"%s\",\n"
        "    \"current_epoch\": %llu",
        node->name,
        node->ip,
        node->port,
        replicate,
        slots,
        node->slots_count,
        flags,
        (unsigned long long)node->current_epoch
    );
    if (error_count > 0) {
        json = FUNC4(json, ",\n    \"cluster_errors\": %lu",
                            error_count);
    }
    if (node->migrating_count > 0 && node->migrating != NULL) {
        int i = 0;
        sds migrating = FUNC5();
        for (; i < node->migrating_count; i += 2) {
            sds slot = node->migrating[i];
            sds dest = node->migrating[i + 1];
            if (slot && dest) {
                if (FUNC7(migrating) > 0) migrating = FUNC2(migrating, ",");
                migrating = FUNC3(migrating, "\"%S\": \"%S\"", slot, dest);
            }
        }
        if (FUNC7(migrating) > 0)
            json = FUNC3(json, ",\n    \"migrating\": {%S}", migrating);
        FUNC6(migrating);
    }
    if (node->importing_count > 0 && node->importing != NULL) {
        int i = 0;
        sds importing = FUNC5();
        for (; i < node->importing_count; i += 2) {
            sds slot = node->importing[i];
            sds from = node->importing[i + 1];
            if (slot && from) {
                if (FUNC7(importing) > 0) importing = FUNC2(importing, ",");
                importing = FUNC3(importing, "\"%S\": \"%S\"", slot, from);
            }
        }
        if (FUNC7(importing) > 0)
            json = FUNC3(json, ",\n    \"importing\": {%S}", importing);
        FUNC6(importing);
    }
    json = FUNC2(json, "\n  }");
    FUNC6(replicate);
    FUNC6(slots);
    FUNC6(flags);
    return json;
}