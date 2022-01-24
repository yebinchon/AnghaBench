#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  streamNACK ;
struct TYPE_12__ {int /*<<< orphan*/  pel; } ;
typedef  TYPE_1__ streamConsumer ;
struct TYPE_13__ {int /*<<< orphan*/  consumers; int /*<<< orphan*/  pel; } ;
typedef  TYPE_2__ streamCG ;
typedef  scalar_t__ sds ;
struct TYPE_14__ {unsigned char* key; int /*<<< orphan*/  key_len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ raxIterator ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 

uint64_t FUNC10(streamCG *cg, sds name) {
    streamConsumer *consumer = FUNC9(cg,name,0);
    if (consumer == NULL) return 0;

    uint64_t retval = FUNC3(consumer->pel);

    /* Iterate all the consumer pending messages, deleting every corresponding
     * entry from the global entry. */
    raxIterator ri;
    FUNC4(&ri,consumer->pel);
    FUNC2(&ri,"^",NULL,0);
    while(FUNC0(&ri)) {
        streamNACK *nack = ri.data;
        FUNC1(cg->pel,ri.key,ri.key_len,NULL);
        FUNC8(nack);
    }
    FUNC5(&ri);

    /* Deallocate the consumer. */
    FUNC1(cg->consumers,(unsigned char*)name,FUNC6(name),NULL);
    FUNC7(consumer);
    return retval;
}