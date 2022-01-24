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
 double FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(strm_stream* strm, int argc, strm_value* args, strm_value* ret, int stdev)
{
  strm_value func;
  strm_value* v;
  int i, len;
  double s1, s2;

  FUNC3(strm, argc, args, "a|v", &v, &len, &func);

  s1 = s2 = 0.0;
  if (argc == 0) {
    for (i=0; i<len; i++) {
      double x = FUNC5(v[i]);
      x -= s1;
      s1 += x/(i+1);
      s2 += i * x * x / (i+1);
    }
  }
  else {
    for (i=0; i<len; i++) {
      strm_value val;
      double x;

      val = FUNC0(strm, v[i], func);
      if (!FUNC4(val)) {
        return STRM_NG;
      }
      x = FUNC5(val);
      x -= s1;
      s1 += x/(i+1);
      s2 += i * x * x / (i+1);
    }
  }
  s2 = s2 / (i-1);
  if (stdev) {
    s2 = FUNC1(s2);
  }
  *ret = FUNC2(s2);
  return STRM_OK;
}