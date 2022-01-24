#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int,int) ; 
 int FUNC2 (void*) ; 

void FUNC3(void **pp, int size, int i, int n)
{
   void *p = *pp;
   if (n) {
      int z;

      if (p == NULL) {
         FUNC1(pp, size, n);
         return;
      }

      z = FUNC2(p);
      FUNC1(&p, size, n);
      FUNC0((char *) p + (i+n)*size, (char *) p + i*size, size * (z-i));
   }
   *pp = p;
}