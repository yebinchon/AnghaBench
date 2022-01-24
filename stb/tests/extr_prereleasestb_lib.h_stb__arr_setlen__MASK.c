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
struct TYPE_2__ {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 TYPE_1__* FUNC3 (void*) ; 

void FUNC4(void **pp, int size, int newlen)
{
   void *p = *pp;
   FUNC1(p);
   if (FUNC2(p) < newlen || p == NULL) {
      FUNC0(pp, size, newlen, newlen);
   } else {
      FUNC3(p)->len = newlen;
   }
}