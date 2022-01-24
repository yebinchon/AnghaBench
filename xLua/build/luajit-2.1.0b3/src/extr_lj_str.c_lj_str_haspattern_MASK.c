#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int len; } ;
typedef  TYPE_1__ GCstr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 char* FUNC2 (TYPE_1__*) ; 

int FUNC3(GCstr *s)
{
  const char *p = FUNC2(s), *q = p + s->len;
  while (p < q) {
    int c = *(const uint8_t *)p++;
    if (FUNC0(c) && FUNC1("^$*+?.([%-", c))
      return 1;  /* Found a pattern matching char. */
  }
  return 0;  /* No pattern matching chars found. */
}