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
typedef  int strm_int ;

/* Variables and functions */
 int* utf8len_codepage ; 

__attribute__((used)) static int
FUNC0(const char* p, const char* e)
{
  strm_int len;
  strm_int i;

  len = utf8len_codepage[(unsigned char)*p];
  if (p + len > e) return 1;
  for (i = 1; i < len; ++i)
    if ((p[i] & 0xc0) != 0x80)
      return 1;
  return len;
}