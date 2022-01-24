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
struct TYPE_2__ {int requests; int /*<<< orphan*/  liveclients_mutex; scalar_t__ num_threads; int /*<<< orphan*/  liveclients; scalar_t__ keepalive; scalar_t__ el; int /*<<< orphan*/  requests_finished; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(client c) {
    int requests_finished = 0;
    FUNC1(config.requests_finished, requests_finished);
    if (requests_finished >= config.requests) {
        FUNC3(c);
        if (!config.num_threads && config.el) FUNC0(config.el);
        return;
    }
    if (config.keepalive) {
        FUNC6(c);
    } else {
        if (config.num_threads) FUNC4(&(config.liveclients_mutex));
        config.liveclients--;
        FUNC2(c);
        config.liveclients++;
        if (config.num_threads)
            FUNC5(&(config.liveclients_mutex));
        FUNC3(c);
    }
}