#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  chans; } ;
typedef  TYPE_2__ SeafMqManager ;
typedef  int /*<<< orphan*/  GAsyncQueue ;

/* Variables and functions */
 char* SEAFILE_NOTIFY_CHAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void
FUNC6 (SeafMqManager *mgr, const char *type, const char *content)
{
    const char *chan = SEAFILE_NOTIFY_CHAN;
    GAsyncQueue *async_queue = FUNC1 (mgr->priv->chans, chan);
    if (!async_queue) {
        FUNC5 ("Unkonwn message channel %s.\n", chan);
        return;
    }

    if (!type || !content) {
        FUNC5 ("type and content should not be NULL.\n");
        return;
    }

    json_t *msg = FUNC2 ();
    FUNC3 (msg, "type", FUNC4(type));
    FUNC3 (msg, "content", FUNC4(content));

    FUNC0 (async_queue, msg);
}