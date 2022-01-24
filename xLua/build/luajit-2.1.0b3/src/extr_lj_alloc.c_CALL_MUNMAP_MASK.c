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
 int FUNC0 (void*,size_t) ; 

__attribute__((used)) static int FUNC1(void *ptr, size_t size)
{
  int olderr = errno;
  int ret = FUNC0(ptr, size);
  errno = olderr;
  return ret;
}