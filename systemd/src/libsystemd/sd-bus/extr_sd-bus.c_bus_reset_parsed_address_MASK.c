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
struct TYPE_4__ {scalar_t__ nspid; void* machine; int /*<<< orphan*/  server_id; void* exec_path; int /*<<< orphan*/  exec_argv; scalar_t__ sockaddr_size; int /*<<< orphan*/  sockaddr; } ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  SD_ID128_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(sd_bus *b) {
        FUNC0(b);

        FUNC3(b->sockaddr);
        b->sockaddr_size = 0;
        b->exec_argv = FUNC2(b->exec_argv);
        b->exec_path = FUNC1(b->exec_path);
        b->server_id = SD_ID128_NULL;
        b->machine = FUNC1(b->machine);
        b->nspid = 0;
}