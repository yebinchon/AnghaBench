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
struct mvavg_data {int num; void* func_p; int /*<<< orphan*/  func; void* filled; scalar_t__ i; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int strm_int ;

/* Variables and functions */
 void* FALSE ; 
 int STRM_NG ; 
 int STRM_OK ; 
 void* TRUE ; 
 int /*<<< orphan*/  iter_mvavg ; 
 struct mvavg_data* FUNC0 (int) ; 
 int /*<<< orphan*/  strm_filter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct mvavg_data* d;
  strm_int n;
  strm_value func;

  FUNC1(strm, argc, args, "i|v", &n, &func);
  d = FUNC0(sizeof(struct mvavg_data)+n*sizeof(double));
  if (!d) return STRM_NG;
  d->num = n;
  d->i = 0;
  d->filled = FALSE;
  if (argc == 1) {
    d->func = FUNC2();
    d->func_p = FALSE;
  }
  else {
    d->func = func;
    d->func_p = TRUE;
  }
  *ret = FUNC4(FUNC3(strm_filter, iter_mvavg,
                                           NULL, (void*)d));
  return STRM_OK;
}