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
struct TYPE_5__ {int /*<<< orphan*/  type; int /*<<< orphan*/  class; } ;
typedef  TYPE_1__ DnsResourceKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct siphash*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,struct siphash*) ; 

__attribute__((used)) static void FUNC4(const DnsResourceKey *k, struct siphash *state) {
        FUNC0(k);

        FUNC1(FUNC2(k), state);
        FUNC3(&k->class, sizeof(k->class), state);
        FUNC3(&k->type, sizeof(k->type), state);
}