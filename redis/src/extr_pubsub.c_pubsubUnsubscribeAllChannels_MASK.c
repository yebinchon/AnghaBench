#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_5__ {int /*<<< orphan*/  pubsub_channels; } ;
typedef  TYPE_1__ client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int FUNC6(client *c, int notify) {
    dictIterator *di = FUNC2(c->pubsub_channels);
    dictEntry *de;
    int count = 0;

    while((de = FUNC3(di)) != NULL) {
        robj *channel = FUNC1(de);

        count += FUNC5(c,channel,notify);
    }
    /* We were subscribed to nothing? Still reply to the client. */
    if (notify && count == 0) FUNC0(c,NULL);
    FUNC4(di);
    return count;
}