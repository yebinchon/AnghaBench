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
struct redis_stat {int /*<<< orphan*/  st_size; } ;
typedef  int /*<<< orphan*/  mstime_t ;
struct TYPE_2__ {int /*<<< orphan*/  aof_current_size; int /*<<< orphan*/  aof_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct redis_stat*) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void) {
    struct redis_stat sb;
    mstime_t latency;

    FUNC2(latency);
    if (FUNC3(server.aof_fd,&sb) == -1) {
        FUNC4(LL_WARNING,"Unable to obtain the AOF file length. stat: %s",
            FUNC5(errno));
    } else {
        server.aof_current_size = sb.st_size;
    }
    FUNC1(latency);
    FUNC0("aof-fstat",latency);
}