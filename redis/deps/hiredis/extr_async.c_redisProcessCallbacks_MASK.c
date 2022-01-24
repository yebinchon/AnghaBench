#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ type; char* str; } ;
typedef  TYPE_3__ redisReply ;
struct TYPE_22__ {int flags; TYPE_2__* reader; int /*<<< orphan*/  errstr; int /*<<< orphan*/  err; int /*<<< orphan*/  obuf; } ;
typedef  TYPE_4__ redisContext ;
struct TYPE_23__ {int /*<<< orphan*/ * fn; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_5__ redisCallback ;
struct TYPE_25__ {int /*<<< orphan*/ * head; } ;
struct TYPE_24__ {TYPE_9__ replies; TYPE_4__ c; } ;
typedef  TYPE_6__ redisAsyncContext ;
struct TYPE_20__ {TYPE_1__* fn; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* freeObject ) (void*) ;} ;

/* Variables and functions */
 int REDIS_DISCONNECTING ; 
 int /*<<< orphan*/  REDIS_ERR_OTHER ; 
 int REDIS_FREEING ; 
 int REDIS_MONITORING ; 
 int REDIS_OK ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 int REDIS_SUBSCRIBED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,void*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_5__*,void*) ; 
 int FUNC5 (TYPE_9__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (TYPE_4__*,void**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 

void FUNC13(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    redisCallback cb = {NULL, NULL, 0, NULL};
    void *reply = NULL;
    int status;

    while((status = FUNC7(c,&reply)) == REDIS_OK) {
        if (reply == NULL) {
            /* When the connection is being disconnected and there are
             * no more replies, this is the cue to really disconnect. */
            if (c->flags & REDIS_DISCONNECTING && FUNC8(c->obuf) == 0
                && ac->replies.head == NULL) {
                FUNC0(ac);
                return;
            }

            /* If monitor mode, repush callback */
            if(c->flags & REDIS_MONITORING) {
                FUNC3(&ac->replies,&cb);
            }

            /* When the connection is not being disconnected, simply stop
             * trying to get replies and wait for the next loop tick. */
            break;
        }

        /* Even if the context is subscribed, pending regular callbacks will
         * get a reply before pub/sub messages arrive. */
        if (FUNC5(&ac->replies,&cb) != REDIS_OK) {
            /*
             * A spontaneous reply in a not-subscribed context can be the error
             * reply that is sent when a new connection exceeds the maximum
             * number of allowed connections on the server side.
             *
             * This is seen as an error instead of a regular reply because the
             * server closes the connection after sending it.
             *
             * To prevent the error from being overwritten by an EOF error the
             * connection is closed here. See issue #43.
             *
             * Another possibility is that the server is loading its dataset.
             * In this case we also want to close the connection, and have the
             * user wait until the server is ready to take our request.
             */
            if (((redisReply*)reply)->type == REDIS_REPLY_ERROR) {
                c->err = REDIS_ERR_OTHER;
                FUNC9(c->errstr,sizeof(c->errstr),"%s",((redisReply*)reply)->str);
                c->reader->fn->freeObject(reply);
                FUNC0(ac);
                return;
            }
            /* No more regular callbacks and no errors, the context *must* be subscribed or monitoring. */
            FUNC6((c->flags & REDIS_SUBSCRIBED || c->flags & REDIS_MONITORING));
            if(c->flags & REDIS_SUBSCRIBED)
                FUNC2(ac,reply,&cb);
        }

        if (cb.fn != NULL) {
            FUNC4(ac,&cb,reply);
            c->reader->fn->freeObject(reply);

            /* Proceed with free'ing when redisAsyncFree() was called. */
            if (c->flags & REDIS_FREEING) {
                FUNC1(ac);
                return;
            }
        } else {
            /* No callback for this reply. This can either be a NULL callback,
             * or there were no callbacks to begin with. Either way, don't
             * abort with an error, but simply ignore it because the client
             * doesn't know what the server will spit out over the wire. */
            c->reader->fn->freeObject(reply);
        }
    }

    /* Disconnect when there was an error reading the reply */
    if (status != REDIS_OK)
        FUNC0(ac);
}