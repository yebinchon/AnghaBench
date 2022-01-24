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
struct stdev_data {double s1; double s2; int mode; int /*<<< orphan*/  func; scalar_t__ num; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  enum stdev_mode { ____Placeholder_stdev_mode } stdev_mode ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  iter_stdev ; 
 int /*<<< orphan*/  iter_stdevf ; 
 struct stdev_data* FUNC0 (int) ; 
 int /*<<< orphan*/  stdev_finish ; 
 int /*<<< orphan*/  strm_filter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(strm_stream* strm, int argc, strm_value* args, strm_value* ret, enum stdev_mode mode)
{
  struct stdev_data* d;
  strm_value func;

  FUNC1(strm, argc, args, "|v", &func);
  d = FUNC0(sizeof(struct stdev_data));
  if (!d) return STRM_NG;
  d->num = 0;
  d->s1 = d->s2 = 0.0;
  d->mode = mode;
  if (argc == 0) {
    *ret = FUNC3(FUNC2(strm_filter, iter_stdev, stdev_finish, (void*)d));
  }
  else {
    d->func = func;
    *ret = FUNC3(FUNC2(strm_filter, iter_stdevf, stdev_finish, (void*)d));
  }
  return STRM_OK;
}