#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct recv_data {int /*<<< orphan*/  (* func ) (TYPE_1__*,int /*<<< orphan*/ ) ;TYPE_1__* strm; } ;
struct latch_data {int /*<<< orphan*/  rq; int /*<<< orphan*/  dq; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_7__ {scalar_t__ start_func; struct latch_data* data; } ;
typedef  TYPE_1__ strm_stream ;
typedef  int /*<<< orphan*/  (* strm_callback ) (TYPE_1__*,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ latch_push ; 
 struct recv_data* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct recv_data*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC6(strm_stream* latch, strm_stream* strm, strm_callback func)
{
  struct latch_data* d;
  strm_value* v;

  FUNC0(latch->start_func == latch_push);
  d = latch->data;
  v = FUNC4(d->dq);
  if (v) {
    (*func)(strm, *v);
    FUNC1(v);
  }
  else {
    struct recv_data* r = FUNC2(sizeof(struct recv_data));
    r->strm = strm;
    r->func = func;
    FUNC3(d->rq, r);
  }
}