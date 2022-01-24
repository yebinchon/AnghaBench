#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct siphash {int dummy; } ;
struct TYPE_5__ {int size; } ;
typedef  TYPE_1__ DnsPacket ;

/* Variables and functions */
 int* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,struct siphash*) ; 

__attribute__((used)) static void FUNC3(const DnsPacket *s, struct siphash *state) {
        FUNC1(s);

        FUNC2(&s->size, sizeof(s->size), state);
        FUNC2(FUNC0((DnsPacket*) s), s->size, state);
}