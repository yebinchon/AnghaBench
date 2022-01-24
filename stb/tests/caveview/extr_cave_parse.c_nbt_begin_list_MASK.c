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
typedef  scalar_t__ uint32 ;
struct TYPE_3__ {unsigned char* cur; int /*<<< orphan*/  nesting; } ;
typedef  TYPE_1__ nbt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned char*) ; 

__attribute__((used)) static int FUNC2(nbt *n, unsigned char type)
{
   uint32 len;
   unsigned char *ptr;

   ptr = n->cur + 3 + (n->cur[1]*256 + n->cur[2]);
   if (ptr[0] != type)
      return -1;
   n->cur = ptr;
   len = FUNC1(n->cur+1);
   FUNC0(n->cur[0] == type);
   // @TODO keep a stack with the count to make sure they do it right
   ++n->nesting;
   n->cur += 5;
   return (int) len;
}