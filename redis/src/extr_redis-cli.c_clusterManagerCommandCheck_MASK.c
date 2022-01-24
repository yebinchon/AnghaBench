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
typedef  int /*<<< orphan*/  clusterManagerNode ;

/* Variables and functions */
 char* CLUSTER_MANAGER_INVALID_HOST_ARG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char**,char**,int*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(int argc, char **argv) {
    int port = 0;
    char *ip = NULL;
    if (!FUNC5(argc, argv, &ip, &port)) goto invalid_args;
    clusterManagerNode *node = FUNC2(ip, port);
    if (!FUNC1(node, 0)) return 0;
    FUNC3();
    return FUNC0(0);
invalid_args:
    FUNC4(stderr, "%s", CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}