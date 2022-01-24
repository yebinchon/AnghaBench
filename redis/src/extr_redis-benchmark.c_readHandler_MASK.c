#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_10__ {scalar_t__ type; char* str; } ;
typedef  TYPE_2__ redisReply ;
typedef  TYPE_3__* client ;
typedef  int /*<<< orphan*/  aeEventLoop ;
struct TYPE_13__ {int requests; scalar_t__* latency; int /*<<< orphan*/  requests_finished; scalar_t__ showerrors; } ;
struct TYPE_12__ {char* errstr; } ;
struct TYPE_11__ {scalar_t__ latency; scalar_t__ start; scalar_t__ pending; scalar_t__ prefix_pending; scalar_t__ prefixlen; size_t randlen; int /*<<< orphan*/ * randptr; int /*<<< orphan*/  obuf; TYPE_1__* cluster_node; scalar_t__ staglen; TYPE_4__* context; } ;
struct TYPE_9__ {char* ip; int port; } ;

/* Variables and functions */
 scalar_t__ REDIS_OK ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_7__ config ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (TYPE_4__*,void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 () ; 

__attribute__((used)) static void FUNC15(aeEventLoop *el, int fd, void *privdata, int mask) {
    client c = privdata;
    void *reply = NULL;
    FUNC0(*el);
    FUNC0(fd);
    FUNC0(mask);

    /* Calculate latency only for the first read event. This means that the
     * server already sent the reply and we need to parse it. Parsing overhead
     * is not part of the latency, so calculate it only once, here. */
    if (c->latency < 0) c->latency = FUNC14()-(c->start);

    if (FUNC8(c->context) != REDIS_OK) {
        FUNC5(stderr,"Error: %s\n",c->context->errstr);
        FUNC3(1);
    } else {
        while(c->pending) {
            if (FUNC9(c->context,&reply) != REDIS_OK) {
                FUNC5(stderr,"Error: %s\n",c->context->errstr);
                FUNC3(1);
            }
            if (reply != NULL) {
                if (reply == (void*)REDIS_REPLY_ERROR) {
                    FUNC5(stderr,"Unexpected error reply, exiting...\n");
                    FUNC3(1);
                }
                redisReply *r = reply;
                int is_err = (r->type == REDIS_REPLY_ERROR);

                if (is_err && config.showerrors) {
                    /* TODO: static lasterr_time not thread-safe */
                    static time_t lasterr_time = 0;
                    time_t now = FUNC13(NULL);
                    if (lasterr_time != now) {
                        lasterr_time = now;
                        if (c->cluster_node) {
                            FUNC7("Error from server %s:%d: %s\n",
                                   c->cluster_node->ip,
                                   c->cluster_node->port,
                                   r->str);
                        } else FUNC7("Error from server: %s\n", r->str);
                    }
                }

                /* Try to update slots configuration if reply error is
                 * MOVED/ASK/CLUSTERDOWN and the key(s) used by the command
                 * contain(s) the slot hash tag. */
                if (is_err && c->cluster_node && c->staglen) {
                    int fetch_slots = 0, do_wait = 0;
                    if (!FUNC12(r->str,"MOVED",5) || !FUNC12(r->str,"ASK",3))
                        fetch_slots = 1;
                    else if (!FUNC12(r->str,"CLUSTERDOWN",11)) {
                        /* Usually the cluster is able to recover itself after
                         * a CLUSTERDOWN error, so try to sleep one second
                         * before requesting the new configuration. */
                        fetch_slots = 1;
                        do_wait = 1;
                        FUNC7("Error from server %s:%d: %s\n",
                               c->cluster_node->ip,
                               c->cluster_node->port,
                               r->str);
                    }
                    if (do_wait) FUNC11(1);
                    if (fetch_slots && !FUNC4(c))
                        FUNC3(1);
                }

                FUNC6(reply);
                /* This is an OK for prefix commands such as auth and select.*/
                if (c->prefix_pending > 0) {
                    c->prefix_pending--;
                    c->pending--;
                    /* Discard prefix commands on first response.*/
                    if (c->prefixlen > 0) {
                        size_t j;
                        FUNC10(c->obuf, c->prefixlen, -1);
                        /* We also need to fix the pointers to the strings
                        * we need to randomize. */
                        for (j = 0; j < c->randlen; j++)
                            c->randptr[j] -= c->prefixlen;
                        c->prefixlen = 0;
                    }
                    continue;
                }
                int requests_finished = 0;
                FUNC1(config.requests_finished, requests_finished, 1);
                if (requests_finished < config.requests)
                    config.latency[requests_finished] = c->latency;
                c->pending--;
                if (c->pending == 0) {
                    FUNC2(c);
                    break;
                }
            } else {
                break;
            }
        }
    }
}