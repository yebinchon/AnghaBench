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
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 scalar_t__ REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,long long) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,long long) ; 
 char* FUNC5 (int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,long long*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t) ; 

int FUNC9(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(ctx); /* Use automatic memory management. */
    long long padlen;

    if (argc != 4) return FUNC7(ctx);

    if ((FUNC6(argv[2],&padlen) != REDISMODULE_OK) ||
        (padlen< 0)) {
        return FUNC2(ctx,"ERR invalid padding length");
    }
    size_t strlen, chlen;
    const char *str = FUNC5(argv[1], &strlen);
    const char *ch = FUNC5(argv[3], &chlen);

    /* If the string is already larger than the target len, just return
     * the string itself. */
    if (strlen >= (size_t)padlen)
        return FUNC3(ctx,argv[1]);

    /* Padding must be a single character in this simple implementation. */
    if (chlen != 1)
        return FUNC2(ctx,
            "ERR padding must be a single char");

    /* Here we use our pool allocator, for our throw-away allocation. */
    padlen -= strlen;
    char *buf = FUNC1(ctx,padlen+strlen);
    for (long long j = 0; j < padlen; j++) buf[j] = *ch;
    FUNC8(buf+padlen,str,strlen);

    FUNC4(ctx,buf,padlen+strlen);
    return REDISMODULE_OK;
}