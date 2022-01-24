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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 

__attribute__((used)) static void FUNC2(void *dst, void *src, size_t n)
{
  union { uint8_t b; uint32_t u; } host_endian;
  host_endian.u = 1;
  if (host_endian.b == FUNC0(1, 0)) {
    FUNC1(dst, src, n);
  } else {
    size_t i;
    for (i = 0; i < n; i++)
      ((uint8_t *)dst)[i] = ((uint8_t *)src)[n-i-1];
  }
}