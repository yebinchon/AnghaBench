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
struct TYPE_4__ {size_t numele; } ;
typedef  TYPE_1__ rax ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  lazyfree_objects ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(rax *rt) {
    size_t len = rt->numele;
    FUNC1(rt);
    FUNC0(lazyfree_objects,len);
}