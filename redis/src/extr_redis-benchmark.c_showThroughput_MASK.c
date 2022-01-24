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
typedef  void aeEventLoop ;
struct TYPE_2__ {int liveclients; int requests_finished; int requests; int idlemode; char* title; scalar_t__ start; scalar_t__ csv; scalar_t__ num_threads; } ;

/* Variables and functions */
 int AE_NOMORE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC8(struct aeEventLoop *eventLoop, long long id, void *clientData) {
    FUNC0(eventLoop);
    FUNC0(id);
    FUNC0(clientData);
    int liveclients = 0;
    int requests_finished = 0;
    FUNC2(config.liveclients, liveclients);
    FUNC2(config.requests_finished, requests_finished);

    if (liveclients == 0 && requests_finished != config.requests) {
        FUNC5(stderr,"All clients disconnected... aborting.\n");
        FUNC3(1);
    }
    if (config.num_threads && requests_finished >= config.requests) {
        FUNC1(eventLoop);
        return AE_NOMORE;
    }
    if (config.csv) return 250;
    if (config.idlemode == 1) {
        FUNC7("clients: %d\r", config.liveclients);
        FUNC4(stdout);
	return 250;
    }
    float dt = (float)(FUNC6()-config.start)/1000.0;
    float rps = (float)requests_finished/dt;
    FUNC7("%s: %.2f\r", config.title, rps);
    FUNC4(stdout);
    return 250; /* every 250ms */
}