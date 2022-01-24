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
struct uniq_data {int /*<<< orphan*/  init; void* func; void* last; } ;
typedef  void* strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  iter_uniq ; 
 int /*<<< orphan*/  iter_uniqf ; 
 struct uniq_data* FUNC0 (int) ; 
 int /*<<< orphan*/  strm_filter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void**,char*,void**) ; 
 scalar_t__ FUNC2 (void*) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct uniq_data* d;
  strm_value func = FUNC3();

  FUNC1(strm, argc, args, "|v", &func);
  d = FUNC0(sizeof(*d));
  if (!d) return STRM_NG;
  d->last = FUNC3();
  d->func = func;
  d->init = FALSE;
  *ret = FUNC5(FUNC4(strm_filter,
                                           FUNC2(func) ? iter_uniq : iter_uniqf,
                                           NULL, (void*)d));
  return STRM_OK;
}