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
struct stdev_data {double num; int s2; scalar_t__ s1; int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_4__ {struct stdev_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(strm_stream* strm, strm_value data)
{
  struct stdev_data* d = strm->data;
  double x;

  data = FUNC0(strm, data, d->func);
  if (!FUNC1(data)) {
    return STRM_NG;
  }
  x = FUNC2(data);
  d->num++;
  x -= d->s1;
  d->s1 += x/d->num;
  d->s2 += (d->num-1) * x * x / d->num;
  return STRM_OK;
}