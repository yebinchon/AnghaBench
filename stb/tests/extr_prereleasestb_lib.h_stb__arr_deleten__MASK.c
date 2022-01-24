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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (void*) ; 
 TYPE_1__* FUNC2 (void*) ; 

void FUNC3(void **pp, int size, int i, int n)
{
   void *p = *pp;
   if (n) {
      FUNC0((char *) p + i*size, (char *) p + (i+n)*size, size * (FUNC1(p)-(i+n)));
      FUNC2(p)->len -= n;
   }
   *pp = p;
}