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
struct TYPE_5__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_1__ sentinelAddr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 

sentinelAddr *FUNC2(sentinelAddr *src) {
    sentinelAddr *sa;

    sa = FUNC1(sizeof(*sa));
    sa->ip = FUNC0(src->ip);
    sa->port = src->port;
    return sa;
}