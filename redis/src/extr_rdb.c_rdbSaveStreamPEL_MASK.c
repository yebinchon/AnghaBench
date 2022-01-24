#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  delivery_count; int /*<<< orphan*/  delivery_time; } ;
typedef  TYPE_1__ streamNACK ;
typedef  int /*<<< orphan*/  streamID ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rio ;
struct TYPE_8__ {TYPE_1__* data; int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ raxIterator ;
typedef  int /*<<< orphan*/  rax ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

ssize_t FUNC8(rio *rdb, rax *pel, int nacks) {
    ssize_t n, nwritten = 0;

    /* Number of entries in the PEL. */
    if ((n = FUNC5(rdb,FUNC2(pel))) == -1) return -1;
    nwritten += n;

    /* Save each entry. */
    raxIterator ri;
    FUNC3(&ri,pel);
    FUNC1(&ri,"^",NULL,0);
    while(FUNC0(&ri)) {
        /* We store IDs in raw form as 128 big big endian numbers, like
         * they are inside the radix tree key. */
        if ((n = FUNC7(rdb,ri.key,sizeof(streamID))) == -1) return -1;
        nwritten += n;

        if (nacks) {
            streamNACK *nack = ri.data;
            if ((n = FUNC6(rdb,nack->delivery_time)) == -1)
                return -1;
            nwritten += n;
            if ((n = FUNC5(rdb,nack->delivery_count)) == -1) return -1;
            nwritten += n;
            /* We don't save the consumer name: we'll save the pending IDs
             * for each consumer in the consumer PEL, and resolve the consumer
             * at loading time. */
        }
    }
    FUNC4(&ri);
    return nwritten;
}