#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mvavg_data {size_t num; double* data; size_t i; int /*<<< orphan*/  filled; int /*<<< orphan*/  func; scalar_t__ func_p; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_6__ {struct mvavg_data* data; } ;
typedef  TYPE_1__ strm_stream ;
typedef  size_t strm_int ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 double FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(strm_stream* strm, strm_value data)
{
  struct mvavg_data* d = strm->data;
  double sum = 0;
  double c = 0;
  strm_int i, len = d->num;

  if (d->func_p) {
    data = FUNC0(strm, data, d->func);
  }
  if (!FUNC5(data)) {
    FUNC6(strm, "number required");
    return STRM_NG;
  }
  d->data[d->i++] = FUNC7(data);
  if (d->i == d->num) {
    d->filled = TRUE;
    d->i = 0;
  }
  if (!d->filled) {
    FUNC2(strm, FUNC4(), NULL);
    return STRM_OK;
  }
  for (i=0; i<len; i++) {
    double x = d->data[i];
    double t = sum + x;
    if (FUNC1(sum) >= FUNC1(x))
      c += ((sum - t) + x);
    else
      c += ((x - t) + sum);
    sum =  t;
  }
  FUNC2(strm, FUNC3((sum+c)/d->num), NULL);
  return STRM_OK;
}