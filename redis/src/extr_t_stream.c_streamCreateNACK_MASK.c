#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int delivery_count; int /*<<< orphan*/ * consumer; int /*<<< orphan*/  delivery_time; } ;
typedef  TYPE_1__ streamNACK ;
typedef  int /*<<< orphan*/  streamConsumer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int) ; 

streamNACK *FUNC2(streamConsumer *consumer) {
    streamNACK *nack = FUNC1(sizeof(*nack));
    nack->delivery_time = FUNC0();
    nack->delivery_count = 1;
    nack->consumer = consumer;
    return nack;
}