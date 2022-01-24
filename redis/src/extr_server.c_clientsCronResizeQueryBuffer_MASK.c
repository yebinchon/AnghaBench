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
typedef  int time_t ;
struct TYPE_4__ {int lastinteraction; int querybuf_peak; int flags; void* pending_querybuf; void* querybuf; } ;
typedef  TYPE_1__ client ;
struct TYPE_5__ {int unixtime; } ;

/* Variables and functions */
 int CLIENT_MASTER ; 
 size_t LIMIT_PENDING_QUERYBUF ; 
 size_t PROTO_MBULK_BIG_ARG ; 
 size_t FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 size_t FUNC3 (void*) ; 
 TYPE_2__ server ; 

int FUNC4(client *c) {
    size_t querybuf_size = FUNC0(c->querybuf);
    time_t idletime = server.unixtime - c->lastinteraction;

    /* There are two conditions to resize the query buffer:
     * 1) Query buffer is > BIG_ARG and too big for latest peak.
     * 2) Query buffer is > BIG_ARG and client is idle. */
    if (querybuf_size > PROTO_MBULK_BIG_ARG &&
         ((querybuf_size/(c->querybuf_peak+1)) > 2 ||
          idletime > 2))
    {
        /* Only resize the query buffer if it is actually wasting
         * at least a few kbytes. */
        if (FUNC2(c->querybuf) > 1024*4) {
            c->querybuf = FUNC1(c->querybuf);
        }
    }
    /* Reset the peak again to capture the peak memory usage in the next
     * cycle. */
    c->querybuf_peak = 0;

    /* Clients representing masters also use a "pending query buffer" that
     * is the yet not applied part of the stream we are reading. Such buffer
     * also needs resizing from time to time, otherwise after a very large
     * transfer (a huge value or a big MIGRATE operation) it will keep using
     * a lot of memory. */
    if (c->flags & CLIENT_MASTER) {
        /* There are two conditions to resize the pending query buffer:
         * 1) Pending Query buffer is > LIMIT_PENDING_QUERYBUF.
         * 2) Used length is smaller than pending_querybuf_size/2 */
        size_t pending_querybuf_size = FUNC0(c->pending_querybuf);
        if(pending_querybuf_size > LIMIT_PENDING_QUERYBUF &&
           FUNC3(c->pending_querybuf) < (pending_querybuf_size/2))
        {
            c->pending_querybuf = FUNC1(c->pending_querybuf);
        }
    }
    return 0;
}