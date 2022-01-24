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
struct recv_data {int /*<<< orphan*/  strm; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct latch_data {int /*<<< orphan*/  dq; int /*<<< orphan*/  rq; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_3__ {scalar_t__ mode; struct latch_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (struct recv_data*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 scalar_t__ strm_consumer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct recv_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, strm_value data)
{
  struct latch_data* d = strm->data;
  struct recv_data* r = FUNC3(d->rq);

  if (strm->mode != strm_consumer) {
    return STRM_NG;
  }
  if (r) {
    (*r->func)(r->strm, data);
    FUNC0(r);
  }
  else {
    strm_value* v = FUNC1(sizeof(strm_value));
    *v = data;
    FUNC2(d->dq, v);
  }
  return STRM_OK;
}