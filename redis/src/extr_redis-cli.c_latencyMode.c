
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int redisReply ;
struct TYPE_2__ {int interval; scalar_t__ output; scalar_t__ latency_history; } ;


 int LATENCY_HISTORY_DEFAULT_INTERVAL ;
 int LATENCY_SAMPLE_RATE ;
 scalar_t__ OUTPUT_STANDARD ;
 TYPE_1__ config ;
 int context ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int freeReplyObject (int *) ;
 int latencyModePrint (long long,long long,double,long long) ;
 long long mstime () ;
 int printf (char*,...) ;
 int * reconnectingRedisCommand (int ,char*) ;
 int stderr ;
 int usleep (int) ;

__attribute__((used)) static void latencyMode(void) {
    redisReply *reply;
    long long start, latency, min = 0, max = 0, tot = 0, count = 0;
    long long history_interval =
        config.interval ? config.interval/1000 :
                          LATENCY_HISTORY_DEFAULT_INTERVAL;
    double avg;
    long long history_start = mstime();



    if (config.interval == 0) {
        config.interval = 1000;
    } else {
        config.interval /= 1000;
    }

    if (!context) exit(1);
    while(1) {
        start = mstime();
        reply = reconnectingRedisCommand(context,"PING");
        if (reply == ((void*)0)) {
            fprintf(stderr,"\nI/O error\n");
            exit(1);
        }
        latency = mstime()-start;
        freeReplyObject(reply);
        count++;
        if (count == 1) {
            min = max = tot = latency;
            avg = (double) latency;
        } else {
            if (latency < min) min = latency;
            if (latency > max) max = latency;
            tot += latency;
            avg = (double) tot/count;
        }

        if (config.output == OUTPUT_STANDARD) {
            printf("\x1b[0G\x1b[2K");
            latencyModePrint(min,max,avg,count);
        } else {
            if (config.latency_history) {
                latencyModePrint(min,max,avg,count);
            } else if (mstime()-history_start > config.interval) {
                latencyModePrint(min,max,avg,count);
                exit(0);
            }
        }

        if (config.latency_history && mstime()-history_start > history_interval)
        {
            printf(" -- %.2f seconds range\n", (float)(mstime()-history_start)/1000);
            history_start = mstime();
            min = max = tot = count = 0;
        }
        usleep(LATENCY_SAMPLE_RATE * 1000);
    }
}
