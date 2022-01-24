#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct redisCommand {int dummy; } ;
struct TYPE_3__ {char* ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct redisCommand*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int* FUNC2 (int) ; 

int *FUNC3(struct redisCommand *cmd, robj **argv, int argc, int *numkeys) {
    int i, num = 0, *keys;
    FUNC0(cmd);

    /* We need to parse the options of the command in order to seek the first
     * "STREAMS" string which is actually the option. This is needed because
     * "STREAMS" could also be the name of the consumer group and even the
     * name of the stream key. */
    int streams_pos = -1;
    for (i = 1; i < argc; i++) {
        char *arg = argv[i]->ptr;
        if (!FUNC1(arg, "block")) {
            i++; /* Skip option argument. */
        } else if (!FUNC1(arg, "count")) {
            i++; /* Skip option argument. */
        } else if (!FUNC1(arg, "group")) {
            i += 2; /* Skip option argument. */
        } else if (!FUNC1(arg, "noack")) {
            /* Nothing to do. */
        } else if (!FUNC1(arg, "streams")) {
            streams_pos = i;
            break;
        } else {
            break; /* Syntax error. */
        }
    }
    if (streams_pos != -1) num = argc - streams_pos - 1;

    /* Syntax error. */
    if (streams_pos == -1 || num == 0 || num % 2 != 0) {
        *numkeys = 0;
        return NULL;
    }
    num /= 2; /* We have half the keys as there are arguments because
                 there are also the IDs, one per key. */

    keys = FUNC2(sizeof(int) * num);
    for (i = streams_pos+1; i < argc-num; i++) keys[i-streams_pos-1] = i;
    *numkeys = num;
    return keys;
}