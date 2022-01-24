#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int type; char* str; } ;
typedef  TYPE_1__ redisReply ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_6__ {scalar_t__ err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int LRU_CYCLE_PIPELINE_SIZE ; 
 scalar_t__ REDIS_OK ; 
#define  REDIS_REPLY_ERROR 129 
#define  REDIS_REPLY_NIL 128 
 TYPE_2__* context ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 () ; 
 long long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,char*,...) ; 
 scalar_t__ FUNC8 (TYPE_2__*,void**) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void) {
    redisReply *reply;
    char key[128];
    long long start_cycle;
    int j;

    FUNC9(FUNC10(NULL)^FUNC3());
    while(1) {
        /* Perform cycles of 1 second with 50% writes and 50% reads.
         * We use pipelining batching writes / reads N times per cycle in order
         * to fill the target instance easily. */
        start_cycle = FUNC4();
        long long hits = 0, misses = 0;
        while(FUNC4() - start_cycle < 1000) {
            /* Write cycle. */
            for (j = 0; j < LRU_CYCLE_PIPELINE_SIZE; j++) {
                char val[6];
                val[5] = '\0';
                for (int i = 0; i < 5; i++) val[i] = 'A'+FUNC6()%('z'-'A');
                FUNC0(key,sizeof(key));
                FUNC7(context, "SET %s %s",key,val);
            }
            for (j = 0; j < LRU_CYCLE_PIPELINE_SIZE; j++)
                FUNC8(context, (void**)&reply);

            /* Read cycle. */
            for (j = 0; j < LRU_CYCLE_PIPELINE_SIZE; j++) {
                FUNC0(key,sizeof(key));
                FUNC7(context, "GET %s",key);
            }
            for (j = 0; j < LRU_CYCLE_PIPELINE_SIZE; j++) {
                if (FUNC8(context, (void**)&reply) == REDIS_OK) {
                    switch(reply->type) {
                        case REDIS_REPLY_ERROR:
                            FUNC5("%s\n", reply->str);
                            break;
                        case REDIS_REPLY_NIL:
                            misses++;
                            break;
                        default:
                            hits++;
                            break;
                    }
                }
            }

            if (context->err) {
                FUNC2(stderr,"I/O error during LRU test\n");
                FUNC1(1);
            }
        }
        /* Print stats. */
        FUNC5(
            "%lld Gets/sec | Hits: %lld (%.2f%%) | Misses: %lld (%.2f%%)\n",
            hits+misses,
            hits, (double)hits/(hits+misses)*100,
            misses, (double)misses/(hits+misses)*100);
    }
    FUNC1(0);
}