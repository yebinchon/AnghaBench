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
 int errno ; 
 void* FUNC0 (void*,size_t,size_t,int) ; 

__attribute__((used)) static void *FUNC1(void *ptr, size_t osz, size_t nsz, int flags)
{
  int olderr = errno;
  ptr = FUNC0(ptr, osz, nsz, flags);
  errno = olderr;
  return ptr;
}