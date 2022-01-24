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
struct latch_data {void* rq; void* dq; } ;
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  latch_close ; 
 int /*<<< orphan*/  latch_push ; 
 struct latch_data* FUNC1 (int) ; 
 int /*<<< orphan*/  strm_consumer ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct latch_data*) ; 

strm_stream*
FUNC4()
{
  struct latch_data* d = FUNC1(sizeof(struct latch_data));

  FUNC0(d != NULL);
  d->dq = FUNC2();
  d->rq = FUNC2();
  return FUNC3(strm_consumer, latch_push, latch_close, d);
}