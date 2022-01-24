#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct dict {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_12__ {int flags; } ;
typedef  TYPE_2__ redisContext ;
typedef  int /*<<< orphan*/  redisCallbackFn ;
struct TYPE_13__ {int pending_subs; void* privdata; int /*<<< orphan*/ * fn; } ;
typedef  TYPE_3__ redisCallback ;
struct TYPE_11__ {int /*<<< orphan*/  invalid; struct dict* channels; struct dict* patterns; } ;
struct TYPE_14__ {int /*<<< orphan*/  replies; TYPE_1__ sub; TYPE_2__ c; } ;
typedef  TYPE_4__ redisAsyncContext ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 int REDIS_DISCONNECTING ; 
 int REDIS_ERR ; 
 int REDIS_FREEING ; 
 int REDIS_MONITORING ; 
 int REDIS_OK ; 
 int REDIS_SUBSCRIBED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct dict*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct dict*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 char* FUNC7 (char const*,char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*,size_t) ; 
 scalar_t__ FUNC10 (char const*,char*,int) ; 
 char FUNC11 (char const) ; 

__attribute__((used)) static int FUNC12(redisAsyncContext *ac, redisCallbackFn *fn, void *privdata, const char *cmd, size_t len) {
    redisContext *c = &(ac->c);
    redisCallback cb;
    struct dict *cbdict;
    dictEntry *de;
    redisCallback *existcb;
    int pvariant, hasnext;
    const char *cstr, *astr;
    size_t clen, alen;
    const char *p;
    sds sname;
    int ret;

    /* Don't accept new commands when the connection is about to be closed. */
    if (c->flags & (REDIS_DISCONNECTING | REDIS_FREEING)) return REDIS_ERR;

    /* Setup callback */
    cb.fn = fn;
    cb.privdata = privdata;
    cb.pending_subs = 1;

    /* Find out which command will be appended. */
    p = FUNC7(cmd,&cstr,&clen);
    FUNC3(p != NULL);
    hasnext = (p[0] == '$');
    pvariant = (FUNC11(cstr[0]) == 'p') ? 1 : 0;
    cstr += pvariant;
    clen -= pvariant;

    if (hasnext && FUNC10(cstr,"subscribe\r\n",11) == 0) {
        c->flags |= REDIS_SUBSCRIBED;

        /* Add every channel/pattern to the list of subscription callbacks. */
        while ((p = FUNC7(p,&astr,&alen)) != NULL) {
            sname = FUNC9(astr,alen);
            if (pvariant)
                cbdict = ac->sub.patterns;
            else
                cbdict = ac->sub.channels;

            de = FUNC4(cbdict,sname);

            if (de != NULL) {
                existcb = FUNC5(de);
                cb.pending_subs = existcb->pending_subs + 1;
            }

            ret = FUNC6(cbdict,sname,&cb);

            if (ret == 0) FUNC8(sname);
        }
    } else if (FUNC10(cstr,"unsubscribe\r\n",13) == 0) {
        /* It is only useful to call (P)UNSUBSCRIBE when the context is
         * subscribed to one or more channels or patterns. */
        if (!(c->flags & REDIS_SUBSCRIBED)) return REDIS_ERR;

        /* (P)UNSUBSCRIBE does not have its own response: every channel or
         * pattern that is unsubscribed will receive a message. This means we
         * should not append a callback function for this command. */
     } else if(FUNC10(cstr,"monitor\r\n",9) == 0) {
         /* Set monitor flag and push callback */
         c->flags |= REDIS_MONITORING;
         FUNC2(&ac->replies,&cb);
    } else {
        if (c->flags & REDIS_SUBSCRIBED)
            /* This will likely result in an error reply, but it needs to be
             * received and passed to the callback. */
            FUNC2(&ac->sub.invalid,&cb);
        else
            FUNC2(&ac->replies,&cb);
    }

    FUNC1(c,cmd,len);

    /* Always schedule a write when the write buffer is non-empty */
    FUNC0(ac);

    return REDIS_OK;
}