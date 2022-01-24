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
typedef  int /*<<< orphan*/  client ;
struct TYPE_2__ {char* title; scalar_t__ num_threads; void* start; scalar_t__ threads; void* totlatency; int /*<<< orphan*/  el; scalar_t__ requests_finished; scalar_t__ requests_issued; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(char *title, char *cmd, int len) {
    client c;

    config.title = title;
    config.requests_issued = 0;
    config.requests_finished = 0;

    if (config.num_threads) FUNC5();

    int thread_id = config.num_threads > 0 ? 0 : -1;
    c = FUNC1(cmd,len,NULL,thread_id);
    FUNC2(c);

    config.start = FUNC6();
    if (!config.num_threads) FUNC0(config.el);
    else FUNC8();
    config.totlatency = FUNC6()-config.start;

    FUNC7();
    FUNC3();
    if (config.threads) FUNC4();
}