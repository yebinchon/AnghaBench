#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sds ;
struct TYPE_2__ {int /*<<< orphan*/ * errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 TYPE_1__ cluster_manager ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 () ; 

__attribute__((used)) static void FUNC3(sds err) {
    if (cluster_manager.errors == NULL)
        cluster_manager.errors = FUNC2();
    FUNC1(cluster_manager.errors, err);
    FUNC0("%s\n", (char *) err);
}