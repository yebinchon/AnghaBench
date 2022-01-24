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

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(strm_stream* strm, int argc, strm_value* args, strm_value* ret, int avg)
{
  int i, len;
  strm_value* v;
  double sum = 0;
  double c = 0;
  strm_value func;

  FUNC3(strm, argc, args, "a|v", &v, &len, &func);
  if (argc == 1) {
    for (i=0; i<len; i++) {
      double x, t;

      if (!FUNC4(v[i])) {
        return STRM_NG;
      }
      x = FUNC5(v[i]);
      t = sum + x;
      if (FUNC1(sum) >= FUNC1(x))
        c += ((sum - t) + x);
      else
        c += ((x - t) + sum);
      sum =  t;
    }
  }
  else {
    for (i=0; i<len; i++) {
      strm_value val;
      double x, t;

      val = FUNC0(strm, v[i], func);
      if (!FUNC4(val)) {
        return STRM_NG;
      }
      x = FUNC5(val);
      t = sum + x;
      if (FUNC1(sum) >= FUNC1(x))
        c += ((sum - t) + x);
      else
        c += ((x - t) + sum);
      sum =  t;
    }
  }
  sum += c;
  if (avg) {
    *ret = FUNC2(sum/len);
  }
  else {
    *ret = FUNC2(sum);
  }
  return STRM_OK;
}