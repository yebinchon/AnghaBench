#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ type; char const* str; int elements; struct TYPE_15__** element; } ;
typedef  TYPE_1__ redisReply ;
struct TYPE_16__ {char* errstr; scalar_t__ err; } ;
typedef  TYPE_2__ redisContext ;
struct TYPE_17__ {void* appendonly; void* save; } ;
typedef  TYPE_3__ redisConfig ;
struct TYPE_14__ {char* auth; } ;

/* Variables and functions */
 int REDIS_OK ; 
 scalar_t__ REDIS_REPLY_ARRAY ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 TYPE_13__ config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*) ; 
 TYPE_2__* FUNC3 (char const*,int) ; 
 TYPE_2__* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,void**) ; 
 void* FUNC7 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_3__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static redisConfig *FUNC10(const char *ip, int port,
                                   const char *hostsocket)
{
    redisConfig *cfg = FUNC8(sizeof(*cfg));
    if (!cfg) return NULL;
    redisContext *c = NULL;
    redisReply *reply = NULL, *sub_reply = NULL;
    if (hostsocket == NULL)
        c = FUNC3(ip, port);
    else
        c = FUNC4(hostsocket);
    if (c == NULL || c->err) {
        FUNC0(stderr,"Could not connect to Redis at ");
        char *err = (c != NULL ? c->errstr : "");
        if (hostsocket == NULL) FUNC0(stderr,"%s:%d: %s\n",ip,port,err);
        else FUNC0(stderr,"%s: %s\n",hostsocket,err);
        goto fail;
    }

    if(config.auth) {
        void *authReply = NULL;
        FUNC2(c, "AUTH %s", config.auth);
        if (REDIS_OK != FUNC6(c, &authReply)) goto fail;
        if (reply) FUNC1(reply);
        reply = ((redisReply *) authReply);
        if (reply->type == REDIS_REPLY_ERROR) {
            FUNC0(stderr, "ERROR: %s\n", reply->str);
            goto fail;
        }
    }

    FUNC2(c, "CONFIG GET %s", "save");
    FUNC2(c, "CONFIG GET %s", "appendonly");
    int i = 0;
    void *r = NULL;
    for (; i < 2; i++) {
        int res = FUNC6(c, &r);
        if (reply) FUNC1(reply);
        reply = ((redisReply *) r);
        if (res != REDIS_OK || !r) goto fail;
        if (reply->type == REDIS_REPLY_ERROR) {
            FUNC0(stderr, "ERROR: %s\n", reply->str);
            goto fail;
        }
        if (reply->type != REDIS_REPLY_ARRAY || reply->elements < 2) goto fail;
        sub_reply = reply->element[1];
        char *value = sub_reply->str;
        if (!value) value = "";
        switch (i) {
        case 0: cfg->save = FUNC7(value); break;
        case 1: cfg->appendonly = FUNC7(value); break;
        }
    }
    FUNC1(reply);
    FUNC5(c);
    return cfg;
fail:
    FUNC0(stderr, "ERROR: failed to fetch CONFIG from ");
    if (hostsocket == NULL) FUNC0(stderr, "%s:%d\n", ip, port);
    else FUNC0(stderr, "%s\n", hostsocket);
    FUNC1(reply);
    FUNC5(c);
    FUNC9(cfg);
    return NULL;
}