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
typedef  int /*<<< orphan*/  strm_stream ;
typedef  size_t strm_int ;
typedef  int /*<<< orphan*/  strm_array ;

/* Variables and functions */
 scalar_t__ STRM_NG ; 
 int STRM_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(strm_stream* strm, strm_array ary, strm_value func, strm_value** p)
{
  strm_value* v = FUNC2(ary);
  strm_int i, len;

  len = FUNC1(ary);
  for (i=0; i<len; i++) {
    if (FUNC0(v[i])) {
      if (FUNC4(strm, v[i], func, p) == STRM_NG) {
        return STRM_NG;
      }
    }
    else {
      if (FUNC3(strm, func, 1, &v[i], *p) == STRM_NG) {
        return STRM_NG;
      }
      *p += 1;
    }
  }
  return STRM_OK;
}