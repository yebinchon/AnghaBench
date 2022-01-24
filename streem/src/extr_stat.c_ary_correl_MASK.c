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
 int STRM_OK ; 
 double FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int*) ; 
 double FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value* v;
  int i, len;
  double sx, sy, sxx, syy, sxy;

  FUNC5(strm, argc, args, "a", &v, &len);
  sx = sy = sxx = syy = sxy = 0;
  for (i=0; i<len; i++) {
    strm_value data = v[i];
    strm_value* dv;
    double dx, dy;

    if (!FUNC1(data) || FUNC2(data) != 2) {
      /* skip invalid data */
      continue;
    }
    dv = FUNC3(data);
    dx = FUNC6(dv[0]) - sx; sx += dx / (i+1);
    dy = FUNC6(dv[1]) - sy; sy += dy / (i+1);
    sxx += i * dx * dx / (i+1);
    syy += i * dy * dy / (i+1);
    sxy += i * dx * dy / (i+1);
  }
  sxx = FUNC0(sxx / (len-1));
  syy = FUNC0(syy / (len-1));
  sxy /= (len-1) * sxx * syy;
  *ret = FUNC4(sxy);
  return STRM_OK;
}