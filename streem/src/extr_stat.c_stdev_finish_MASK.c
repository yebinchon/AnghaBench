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
struct stdev_data {int mode; int s2; int /*<<< orphan*/  s1; int /*<<< orphan*/  num; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_4__ {struct stdev_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double) ; 
#define  mode_mean_stdev 131 
#define  mode_mean_variance 130 
#define  mode_stdev 129 
#define  mode_variance 128 
 double FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (double) ; 

__attribute__((used)) static int
FUNC4(strm_stream* strm, strm_value data)
{
  struct stdev_data* d = strm->data;
  double s;

  switch (d->mode) {
  case mode_stdev:
    s = FUNC1(d->s2 / (d->num-1));
    FUNC2(strm, FUNC3(s), NULL);
    break;
  case mode_variance:
    s = d->s2 / (d->num-1);
    FUNC2(strm, FUNC3(s), NULL);
    break;
  case mode_mean_stdev:
    s = FUNC1(d->s2 / (d->num-1));
    FUNC2(strm, FUNC0(d->s1, s), NULL);
    break;
  case mode_mean_variance:
    s = d->s2 / (d->num-1);
    FUNC2(strm, FUNC0(d->s1, s), NULL);
    break;
  }
  return STRM_OK;
}