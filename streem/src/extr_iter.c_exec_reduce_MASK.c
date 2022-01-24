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
struct reduce_data {void* func; void* acc; int /*<<< orphan*/  init; } ;
typedef  void* strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  iter_reduce ; 
 struct reduce_data* FUNC0 (int) ; 
 int /*<<< orphan*/  reduce_finish ; 
 int /*<<< orphan*/  strm_filter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void**,char*,void**,void**) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct reduce_data* d;
  strm_value v1, v2;

  FUNC1(strm, argc, args, "v|v", &v1, &v2);
  d = FUNC0(sizeof(*d));
  if (!d) return STRM_NG;
  if (argc == 2) {
    d->init = TRUE;
    d->acc = v1;
    d->func = v2;
  }
  else {
    d->init = FALSE;
    d->acc = FUNC2();
    d->func = v1;
  }
  *ret = FUNC4(FUNC3(strm_filter, iter_reduce, reduce_finish, (void*)d));
  return STRM_OK;
}