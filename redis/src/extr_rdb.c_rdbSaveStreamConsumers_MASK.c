#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pel; int /*<<< orphan*/  seen_time; } ;
typedef  TYPE_1__ streamConsumer ;
struct TYPE_10__ {int /*<<< orphan*/  consumers; } ;
typedef  TYPE_2__ streamCG ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rio ;
struct TYPE_11__ {int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; TYPE_1__* data; } ;
typedef  TYPE_3__ raxIterator ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

size_t FUNC9(rio *rdb, streamCG *cg) {
    ssize_t n, nwritten = 0;

    /* Number of consumers in this consumer group. */
    if ((n = FUNC5(rdb,FUNC2(cg->consumers))) == -1) return -1;
    nwritten += n;

    /* Save each consumer. */
    raxIterator ri;
    FUNC3(&ri,cg->consumers);
    FUNC1(&ri,"^",NULL,0);
    while(FUNC0(&ri)) {
        streamConsumer *consumer = ri.data;

        /* Consumer name. */
        if ((n = FUNC7(rdb,ri.key,ri.key_len)) == -1) return -1;
        nwritten += n;

        /* Last seen time. */
        if ((n = FUNC6(rdb,consumer->seen_time)) == -1)
            return -1;
        nwritten += n;

        /* Consumer PEL, without the ACKs (see last parameter of the function
         * passed with value of 0), at loading time we'll lookup the ID
         * in the consumer group global PEL and will put a reference in the
         * consumer local PEL. */
        if ((n = FUNC8(rdb,consumer->pel,0)) == -1)
            return -1;
        nwritten += n;
    }
    FUNC4(&ri);
    return nwritten;
}