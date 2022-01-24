#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_11__ {int notify_keyspace_events; } ;

/* Variables and functions */
 int NOTIFY_KEYEVENT ; 
 int NOTIFY_KEYSPACE ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void FUNC10(int type, char *event, robj *key, int dbid) {
    sds chan;
    robj *chanobj, *eventobj;
    int len = -1;
    char buf[24];

    /* If any modules are interested in events, notify the module system now.
     * This bypasses the notifications configuration, but the module engine
     * will only call event subscribers if the event type matches the types
     * they are interested in. */
     FUNC4(type, event, key, dbid);

    /* If notifications for this class of events are off, return ASAP. */
    if (!(server.notify_keyspace_events & type)) return;

    eventobj = FUNC1(event,FUNC9(event));

    /* __keyspace@<db>__:<key> <event> notifications. */
    if (server.notify_keyspace_events & NOTIFY_KEYSPACE) {
        chan = FUNC8("__keyspace@",11);
        len = FUNC3(buf,sizeof(buf),dbid);
        chan = FUNC6(chan, buf, len);
        chan = FUNC6(chan, "__:", 3);
        chan = FUNC7(chan, key->ptr);
        chanobj = FUNC0(OBJ_STRING, chan);
        FUNC5(chanobj, eventobj);
        FUNC2(chanobj);
    }

    /* __keyevent@<db>__:<event> <key> notifications. */
    if (server.notify_keyspace_events & NOTIFY_KEYEVENT) {
        chan = FUNC8("__keyevent@",11);
        if (len == -1) len = FUNC3(buf,sizeof(buf),dbid);
        chan = FUNC6(chan, buf, len);
        chan = FUNC6(chan, "__:", 3);
        chan = FUNC7(chan, eventobj->ptr);
        chanobj = FUNC0(OBJ_STRING, chan);
        FUNC5(chanobj, key);
        FUNC2(chanobj);
    }
    FUNC2(eventobj);
}