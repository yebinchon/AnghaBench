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
struct slice_data {int n; void* buf; scalar_t__ i; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int strm_int ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  finish_slice ; 
 int /*<<< orphan*/  FUNC0 (struct slice_data*) ; 
 int /*<<< orphan*/  iter_slice ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  strm_filter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct slice_data* d;
  strm_int n;

  FUNC2(strm, argc, args, "i", &n);
  d = FUNC1(sizeof(*d));
  if (!d) return STRM_NG;
  d->n = n;
  d->i = 0;
  d->buf = FUNC1(n*sizeof(strm_value));
  if (!d->buf) {
    FUNC0(d);
    return STRM_NG;
  }
  *ret = FUNC4(FUNC3(strm_filter, iter_slice, finish_slice, (void*)d));
  return STRM_OK;
}