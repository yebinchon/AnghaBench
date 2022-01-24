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
 int O_endpoint ; 
 int O_lever ; 
 int FUNC0 (short*) ; 

__attribute__((used)) static int FUNC1(short *src, short *dest)
{
   if (FUNC0(src))
      return dest[1] == 256+O_lever;
   if (src[1] == 256+O_endpoint)
      return FUNC0(dest);
   return 0;
}