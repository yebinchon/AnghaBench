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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  seq; int /*<<< orphan*/  ms; } ;
typedef  TYPE_1__ streamID ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int) ; 

void FUNC2(void *buf, streamID *id) {
    uint64_t e[2];
    e[0] = FUNC0(id->ms);
    e[1] = FUNC0(id->seq);
    FUNC1(buf,e,sizeof(e));
}