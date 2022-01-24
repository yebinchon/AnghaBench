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
struct TYPE_4__ {scalar_t__ refcount; struct TYPE_4__* pointer_to_free; } ;
typedef  TYPE_1__ fast_chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(fast_chunk *fc)
{
   if (fc) {
      FUNC0(fc->refcount > 0);
      --fc->refcount;
      if (fc->refcount == 0) {
         FUNC1(fc->pointer_to_free);
         FUNC1(fc);
      }
   }
}