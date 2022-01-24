#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * sds ;
struct TYPE_15__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_16__ {int argc; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_17__ {int /*<<< orphan*/ * pubsub_patterns; int /*<<< orphan*/  pubsub_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 void* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,void*,long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC16(client *c) {
    if (c->argc == 2 && !FUNC14(c->argv[1]->ptr,"help")) {
        const char *help[] = {
"CHANNELS [<pattern>] -- Return the currently active channels matching a pattern (default: all).",
"NUMPAT -- Return number of subscriptions to patterns.",
"NUMSUB [channel-1 .. channel-N] -- Returns the number of subscribers for the specified channels (excluding patterns, default: none).",
NULL
        };
        FUNC3(c, help);
    } else if (!FUNC14(c->argv[1]->ptr,"channels") &&
        (c->argc == 2 || c->argc == 3))
    {
        /* PUBSUB CHANNELS [<pattern>] */
        sds pat = (c->argc == 2) ? NULL : c->argv[2]->ptr;
        dictIterator *di = FUNC7(server.pubsub_channels);
        dictEntry *de;
        long mblen = 0;
        void *replylen;

        replylen = FUNC2(c);
        while((de = FUNC9(di)) != NULL) {
            robj *cobj = FUNC8(de);
            sds channel = cobj->ptr;

            if (!pat || FUNC15(pat, FUNC12(pat),
                                       channel, FUNC12(channel),0))
            {
                FUNC1(c,cobj);
                mblen++;
            }
        }
        FUNC10(di);
        FUNC13(c,replylen,mblen);
    } else if (!FUNC14(c->argv[1]->ptr,"numsub") && c->argc >= 2) {
        /* PUBSUB NUMSUB [Channel_1 ... Channel_N] */
        int j;

        FUNC0(c,(c->argc-2)*2);
        for (j = 2; j < c->argc; j++) {
            list *l = FUNC6(server.pubsub_channels,c->argv[j]);

            FUNC1(c,c->argv[j]);
            FUNC4(c,l ? FUNC11(l) : 0);
        }
    } else if (!FUNC14(c->argv[1]->ptr,"numpat") && c->argc == 2) {
        /* PUBSUB NUMPAT */
        FUNC4(c,FUNC11(server.pubsub_patterns));
    } else {
        FUNC5(c);
    }
}