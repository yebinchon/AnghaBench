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
typedef  int uint16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(int n, uint16 *rev)
{
   int ld = FUNC1(n) - 1; // ilog is off-by-one from normal definitions
   int i, n8 = n >> 3;
   for (i=0; i < n8; ++i)
      rev[i] = (FUNC0(i) >> (32-ld+3)) << 2;
}