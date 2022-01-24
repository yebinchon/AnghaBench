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
struct TYPE_3__ {void* seq; void* ms; } ;
typedef  TYPE_1__ streamID ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void *buf, streamID *id) {
    uint64_t e[2];
    FUNC0(e,buf,sizeof(e));
    id->ms = FUNC1(e[0]);
    id->seq = FUNC1(e[1]);
}