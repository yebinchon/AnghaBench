#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_7__ {TYPE_1__* cluster; } ;
struct TYPE_5__ {int /*<<< orphan*/  nodes_black_list; } ;

/* Variables and functions */
 scalar_t__ CLUSTER_BLACKLIST_TTL ; 
 int /*<<< orphan*/  CLUSTER_NAMELEN ; 
 scalar_t__ DICT_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ server ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(clusterNode *node) {
    dictEntry *de;
    sds id = FUNC6(node->name,CLUSTER_NAMELEN);

    FUNC0();
    if (FUNC1(server.cluster->nodes_black_list,id,NULL) == DICT_OK) {
        /* If the key was added, duplicate the sds string representation of
         * the key for the next lookup. We'll free it at the end. */
        id = FUNC4(id);
    }
    de = FUNC2(server.cluster->nodes_black_list,id);
    FUNC3(de,FUNC7(NULL)+CLUSTER_BLACKLIST_TTL);
    FUNC5(id);
}