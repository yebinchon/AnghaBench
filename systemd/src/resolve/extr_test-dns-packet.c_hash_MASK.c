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
typedef  int /*<<< orphan*/  uint64_t ;
struct siphash {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bytes; } ;
typedef  int /*<<< orphan*/  DnsResourceRecord ;

/* Variables and functions */
 TYPE_1__ HASH_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct siphash*) ; 
 int /*<<< orphan*/  FUNC1 (struct siphash*) ; 
 int /*<<< orphan*/  FUNC2 (struct siphash*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t FUNC3(DnsResourceRecord *rr) {
        struct siphash state;

        FUNC2(&state, HASH_KEY.bytes);
        FUNC0(rr, &state);
        return FUNC1(&state);
}