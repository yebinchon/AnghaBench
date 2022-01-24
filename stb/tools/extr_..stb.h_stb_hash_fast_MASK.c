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
 unsigned int FUNC0 (unsigned char*) ; 

unsigned int FUNC1(void *p, int len)
{
   unsigned char *q = (unsigned char *) p;
   unsigned int hash = len;

   if (len <= 0 || q == NULL) return 0;

   /* Main loop */
   for (;len > 3; len -= 4) {
      unsigned int val;
      hash +=  FUNC0(q);
      val   = (FUNC0(q+2) << 11);
      hash  = (hash << 16) ^ hash ^ val;
      q    += 4;
      hash += hash >> 11;
   }

   /* Handle end cases */
   switch (len) {
      case 3: hash += FUNC0(q);
              hash ^= hash << 16;
              hash ^= q[2] << 18;
              hash += hash >> 11;
              break;
      case 2: hash += FUNC0(q);
              hash ^= hash << 11;
              hash += hash >> 17;
              break;
      case 1: hash += q[0];
              hash ^= hash << 10;
              hash += hash >> 1;
              break;
      case 0: break;
   }

   /* Force "avalanching" of final 127 bits */
   hash ^= hash << 3;
   hash += hash >> 5;
   hash ^= hash << 4;
   hash += hash >> 17;
   hash ^= hash << 25;
   hash += hash >> 6;

   return hash;
}