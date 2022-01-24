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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char**,char**,int*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(int argc, char **argv) {
    int port = 0;
    char *ip = NULL;
    if (!FUNC4(argc, argv, &ip, &port)) goto invalid_args;
    clusterManagerNode *node = FUNC1(ip, port);
    if (!FUNC0(node, 0)) return 0;
    FUNC2();
    return 1;
invalid_args:
    FUNC3(stderr, "%s", CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}