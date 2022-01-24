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
 scalar_t__ FUNC0 (unsigned char const*) ; 
 size_t FUNC1 (unsigned char const*) ; 
 scalar_t__ FUNC2 (unsigned char const*,unsigned char const*,size_t) ; 

unsigned char *FUNC3(const unsigned char *src1,const unsigned char *src2)
{
  size_t len;

  if (src2 ==NULL || *src2 == 0)
    return (unsigned char *)src1;

  len = FUNC1(src2);

  while(*src1)
    {
      if ((*src1 == *src2) && (FUNC2(src1,src2,len) == 0))
	return (unsigned char *)src1;
      src1 = (unsigned char *)FUNC0(src1);
    }
  return NULL;
}