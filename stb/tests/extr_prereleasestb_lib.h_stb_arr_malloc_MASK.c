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
struct TYPE_2__ {int /*<<< orphan*/  signature; scalar_t__ limit; scalar_t__ len; } ;
typedef  TYPE_1__ stb__arr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  stb_arr_signature ; 

void FUNC1(void **target, void *context)
{
   stb__arr *q = (stb__arr *) FUNC0(sizeof(*q));
   q->len = q->limit = 0;
   q->signature = stb_arr_signature;
   *target = (void *) (q+1);
}