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
struct TYPE_4__ {int alloced; } ;
typedef  TYPE_1__ stb_idict ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int) ; 

stb_idict * FUNC2(unsigned int size)
{
   stb_idict *e = (stb_idict *) FUNC0(sizeof(*e));
   if (e) {
      // round up to power of 2
      while ((size & (size-1)) != 0) // while more than 1 bit is set
         size += (size & ~(size-1)); // add the lowest set bit
      FUNC1(e, size);
      e->alloced = 1;
   }
   return e;
}