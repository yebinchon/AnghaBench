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
struct TYPE_7__ {scalar_t__ mode; int rsize; int rcapa; int /*<<< orphan*/  start_func; int /*<<< orphan*/  refcnt; struct TYPE_7__** rest; struct TYPE_7__* dst; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__** FUNC1 (TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ strm_consumer ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ strm_producer ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(strm_stream* src, strm_stream* dst)
{
  FUNC0(src->mode != strm_consumer);
  FUNC0(dst->mode != strm_producer);
  if (src->dst == NULL) {
    src->dst = dst;
  }
  else {
    if (src->rsize <= src->rcapa) {
      src->rcapa = src->rcapa*2+2;
      src->rest = FUNC1(src->rest, sizeof(strm_stream*)*src->rcapa);
    }
    src->rest[src->rsize++] = dst;
  }
  FUNC2(dst->refcnt);

  if (src->mode == strm_producer) {
    FUNC5();
    FUNC4(src, src->start_func, FUNC3());
  }
  return STRM_OK;
}