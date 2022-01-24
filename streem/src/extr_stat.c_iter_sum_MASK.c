#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sum_data {double sum; double c; int /*<<< orphan*/  num; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_3__ {struct sum_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 scalar_t__ FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(strm_stream* strm, strm_value data)
{
  struct sum_data* d = strm->data;
  double x, t;

  if (!FUNC1(data)) {
    return STRM_NG;
  }
  x = FUNC2(data);
  t = d->sum + x;
  if (FUNC0(d->sum) >= FUNC0(x))
    d->c += ((d->sum - t) + x);
  else
    d->c += ((x - t) + d->sum);
  d->sum = t;
  d->num++;
  return STRM_OK;
}