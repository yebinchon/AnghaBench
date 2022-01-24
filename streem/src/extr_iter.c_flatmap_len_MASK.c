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
typedef  int /*<<< orphan*/  strm_value ;
typedef  size_t strm_int ;
typedef  int /*<<< orphan*/  strm_array ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(strm_array ary)
{
  strm_value* v = FUNC2(ary);
  strm_int i, len, n = 0;

  len = FUNC1(ary);
  for (i=0; i<len; i++) {
    if (FUNC0(v[i])) {
      n += FUNC3(v[i]);
    }
    else {
      n++;
    }
  }
  return n;
}