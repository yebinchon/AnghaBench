#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  redisReply ;
struct TYPE_2__ {int interval; scalar_t__ output; scalar_t__ latency_history; } ;

/* Variables and functions */
 int LATENCY_HISTORY_DEFAULT_INTERVAL ; 
 int LATENCY_SAMPLE_RATE ; 
 scalar_t__ OUTPUT_STANDARD ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (long long,long long,double,long long) ; 
 long long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void) {
    redisReply *reply;
    long long start, latency, min = 0, max = 0, tot = 0, count = 0;
    long long history_interval =
        config.interval ? config.interval/1000 :
                          LATENCY_HISTORY_DEFAULT_INTERVAL;
    double avg;
    long long history_start = FUNC4();

    /* Set a default for the interval in case of --latency option
     * with --raw, --csv or when it is redirected to non tty. */
    if (config.interval == 0) {
        config.interval = 1000;
    } else {
        config.interval /= 1000; /* We need to convert to milliseconds. */
    }

    if (!context) FUNC0(1);
    while(1) {
        start = FUNC4();
        reply = FUNC6(context,"PING");
        if (reply == NULL) {
            FUNC1(stderr,"\nI/O error\n");
            FUNC0(1);
        }
        latency = FUNC4()-start;
        FUNC2(reply);
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
            FUNC5("\x1b[0G\x1b[2K"); /* Clear the line. */
            FUNC3(min,max,avg,count);
        } else {
            if (config.latency_history) {
                FUNC3(min,max,avg,count);
            } else if (FUNC4()-history_start > config.interval) {
                FUNC3(min,max,avg,count);
                FUNC0(0);
            }
        }

        if (config.latency_history && FUNC4()-history_start > history_interval)
        {
            FUNC5(" -- %.2f seconds range\n", (float)(FUNC4()-history_start)/1000);
            history_start = FUNC4();
            min = max = tot = count = 0;
        }
        FUNC7(LATENCY_SAMPLE_RATE * 1000);
    }
}