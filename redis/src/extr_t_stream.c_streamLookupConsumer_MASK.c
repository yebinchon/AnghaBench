#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  seen_time; int /*<<< orphan*/  pel; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ streamConsumer ;
struct TYPE_10__ {int /*<<< orphan*/  consumers; } ;
typedef  TYPE_2__ streamCG ;
typedef  scalar_t__ sds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* raxNotFound ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__* FUNC6 (int) ; 

streamConsumer *FUNC7(streamCG *cg, sds name, int create) {
    streamConsumer *consumer = FUNC1(cg->consumers,(unsigned char*)name,
                               FUNC5(name));
    if (consumer == raxNotFound) {
        if (!create) return NULL;
        consumer = FUNC6(sizeof(*consumer));
        consumer->name = FUNC4(name);
        consumer->pel = FUNC3();
        FUNC2(cg->consumers,(unsigned char*)name,FUNC5(name),
                  consumer,NULL);
    }
    consumer->seen_time = FUNC0();
    return consumer;
}