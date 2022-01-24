#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ strm_stream_mode ;
struct TYPE_4__ {scalar_t__ mode; scalar_t__ refcnt; scalar_t__ (* close_func ) (TYPE_1__*,int /*<<< orphan*/ ) ;int rsize; scalar_t__* rest; scalar_t__ dst; scalar_t__* data; } ;
typedef  TYPE_1__ strm_stream ;
typedef  int /*<<< orphan*/  strm_callback ;

/* Variables and functions */
 scalar_t__ STRM_NG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ stream_count ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ strm_killed ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC6(strm_stream* strm)
{
  strm_stream_mode mode = strm->mode;

  if (mode == strm_killed) return;
  FUNC2(strm->refcnt);
  if (strm->refcnt > 0) return;
  if (!FUNC1(strm->mode, mode, strm_killed)) {
    return;
  }
  if (strm->close_func) {
    if ((*strm->close_func)(strm, FUNC3()) == STRM_NG)
      return;
  }
  else {
    FUNC0(strm->data);
    strm->data = NULL;
  }

  if (strm->dst) {
    FUNC4(strm->dst, (strm_callback)strm_stream_close, FUNC3());
  }
  if (strm->rest) {
    int i;

    for (i=0; i<strm->rsize; i++) {
      FUNC4(strm->rest[i], (strm_callback)strm_stream_close, FUNC3());
    }
    FUNC0(strm->rest);
  }
  FUNC2(stream_count);
}