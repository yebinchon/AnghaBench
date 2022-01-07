
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; char* str; } ;
typedef TYPE_1__ redisReply ;
typedef int key ;
struct TYPE_6__ {scalar_t__ err; } ;


 int LRUTestGenKey (char*,int) ;
 int LRU_CYCLE_PIPELINE_SIZE ;
 scalar_t__ REDIS_OK ;


 TYPE_2__* context ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int getpid () ;
 long long mstime () ;
 int printf (char*,...) ;
 char rand () ;
 int redisAppendCommand (TYPE_2__*,char*,char*,...) ;
 scalar_t__ redisGetReply (TYPE_2__*,void**) ;
 int srand (int) ;
 int stderr ;
 int time (int *) ;

__attribute__((used)) static void LRUTestMode(void) {
    redisReply *reply;
    char key[128];
    long long start_cycle;
    int j;

    srand(time(((void*)0))^getpid());
    while(1) {



        start_cycle = mstime();
        long long hits = 0, misses = 0;
        while(mstime() - start_cycle < 1000) {

            for (j = 0; j < LRU_CYCLE_PIPELINE_SIZE; j++) {
                char val[6];
                val[5] = '\0';
                for (int i = 0; i < 5; i++) val[i] = 'A'+rand()%('z'-'A');
                LRUTestGenKey(key,sizeof(key));
                redisAppendCommand(context, "SET %s %s",key,val);
            }
            for (j = 0; j < LRU_CYCLE_PIPELINE_SIZE; j++)
                redisGetReply(context, (void**)&reply);


            for (j = 0; j < LRU_CYCLE_PIPELINE_SIZE; j++) {
                LRUTestGenKey(key,sizeof(key));
                redisAppendCommand(context, "GET %s",key);
            }
            for (j = 0; j < LRU_CYCLE_PIPELINE_SIZE; j++) {
                if (redisGetReply(context, (void**)&reply) == REDIS_OK) {
                    switch(reply->type) {
                        case 129:
                            printf("%s\n", reply->str);
                            break;
                        case 128:
                            misses++;
                            break;
                        default:
                            hits++;
                            break;
                    }
                }
            }

            if (context->err) {
                fprintf(stderr,"I/O error during LRU test\n");
                exit(1);
            }
        }

        printf(
            "%lld Gets/sec | Hits: %lld (%.2f%%) | Misses: %lld (%.2f%%)\n",
            hits+misses,
            hits, (double)hits/(hits+misses)*100,
            misses, (double)misses/(hits+misses)*100);
    }
    exit(0);
}
