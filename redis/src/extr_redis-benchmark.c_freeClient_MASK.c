#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  listNode ;
typedef  TYPE_1__* client ;
typedef  int /*<<< orphan*/  aeEventLoop ;
struct TYPE_10__ {int requests; int /*<<< orphan*/  liveclients_mutex; scalar_t__ num_threads; int /*<<< orphan*/  clients; int /*<<< orphan*/  liveclients; int /*<<< orphan*/  requests_finished; } ;
struct TYPE_9__ {int /*<<< orphan*/  fd; } ;
struct TYPE_8__ {scalar_t__ thread_id; struct TYPE_8__* stagptr; struct TYPE_8__* randptr; int /*<<< orphan*/  obuf; TYPE_3__* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_READABLE ; 
 int /*<<< orphan*/  AE_WRITABLE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_6__ config ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC12(client c) {
    aeEventLoop *el = FUNC0(c);
    listNode *ln;
    FUNC1(el,c->context->fd,AE_WRITABLE);
    FUNC1(el,c->context->fd,AE_READABLE);
    if (c->thread_id >= 0) {
        int requests_finished = 0;
        FUNC4(config.requests_finished, requests_finished);
        if (requests_finished >= config.requests) {
            FUNC2(el);
        }
    }
    FUNC9(c->context);
    FUNC10(c->obuf);
    FUNC11(c->randptr);
    FUNC11(c->stagptr);
    FUNC11(c);
    if (config.num_threads) FUNC7(&(config.liveclients_mutex));
    config.liveclients--;
    ln = FUNC6(config.clients,c);
    FUNC3(ln != NULL);
    FUNC5(config.clients,ln);
    if (config.num_threads) FUNC8(&(config.liveclients_mutex));
}