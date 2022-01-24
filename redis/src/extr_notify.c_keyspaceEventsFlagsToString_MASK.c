#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 int NOTIFY_ALL ; 
 int NOTIFY_EVICTED ; 
 int NOTIFY_EXPIRED ; 
 int NOTIFY_GENERIC ; 
 int NOTIFY_HASH ; 
 int NOTIFY_KEYEVENT ; 
 int NOTIFY_KEYSPACE ; 
 int NOTIFY_KEY_MISS ; 
 int NOTIFY_LIST ; 
 int NOTIFY_SET ; 
 int NOTIFY_STREAM ; 
 int NOTIFY_STRING ; 
 int NOTIFY_ZSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

sds FUNC2(int flags) {
    sds res;

    res = FUNC1();
    if ((flags & NOTIFY_ALL) == NOTIFY_ALL) {
        res = FUNC0(res,"A",1);
    } else {
        if (flags & NOTIFY_GENERIC) res = FUNC0(res,"g",1);
        if (flags & NOTIFY_STRING) res = FUNC0(res,"$",1);
        if (flags & NOTIFY_LIST) res = FUNC0(res,"l",1);
        if (flags & NOTIFY_SET) res = FUNC0(res,"s",1);
        if (flags & NOTIFY_HASH) res = FUNC0(res,"h",1);
        if (flags & NOTIFY_ZSET) res = FUNC0(res,"z",1);
        if (flags & NOTIFY_EXPIRED) res = FUNC0(res,"x",1);
        if (flags & NOTIFY_EVICTED) res = FUNC0(res,"e",1);
        if (flags & NOTIFY_STREAM) res = FUNC0(res,"t",1);
        if (flags & NOTIFY_KEY_MISS) res = FUNC0(res,"m",1);
    }
    if (flags & NOTIFY_KEYSPACE) res = FUNC0(res,"K",1);
    if (flags & NOTIFY_KEYEVENT) res = FUNC0(res,"E",1);
    return res;
}