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
struct sort_data {int capa; void* buf; scalar_t__ len; int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int SORT_FIRST_CAPA ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  finish_median ; 
 int /*<<< orphan*/  FUNC0 (struct sort_data*) ; 
 int /*<<< orphan*/  iter_median ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  strm_filter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct sort_data* d;
  strm_value func;

  FUNC2(strm, argc, args, "|v", &func);

  d = FUNC1(sizeof(struct sort_data));
  if (!d) return STRM_NG;
  d->func = (argc == 0) ? FUNC3() : func;
  d->len = 0;
  d->capa = SORT_FIRST_CAPA;
  d->buf = FUNC1(sizeof(strm_value)*SORT_FIRST_CAPA);
  if (!d->buf) {
    FUNC0(d);
    return STRM_NG;
  }
  *ret = FUNC5(FUNC4(strm_filter, iter_median,
                                           finish_median, (void*)d));
  return STRM_OK;
}