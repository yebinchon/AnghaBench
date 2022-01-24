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
struct TYPE_3__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct redisCommand*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int) ; 

int *FUNC3(struct redisCommand *cmd, robj **argv, int argc, int *numkeys) {
    int i, num, *keys;
    FUNC0(cmd);

    num = FUNC1(argv[2]->ptr);
    /* Sanity check. Don't return any key if the command is going to
     * reply with syntax error. */
    if (num <= 0 || num > (argc-3)) {
        *numkeys = 0;
        return NULL;
    }

    keys = FUNC2(sizeof(int)*num);
    *numkeys = num;

    /* Add all key positions for argv[3...n] to keys[] */
    for (i = 0; i < num; i++) keys[i] = 3+i;

    return keys;
}