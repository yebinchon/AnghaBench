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
struct strm_task {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  excl; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int /*<<< orphan*/  prod_queue ; 
 int /*<<< orphan*/  queue ; 
 scalar_t__ stream_count ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct strm_task*) ; 

__attribute__((used)) static void*
FUNC3(void *data)
{
  strm_stream* strm;

  for (;;) {
    strm = FUNC1(queue);
    if (!strm) {
      strm = FUNC1(prod_queue);
    }
    if (strm) {
      if (FUNC0(strm->excl, 0, 1)) {
        struct strm_task* t;

        while ((t = FUNC1(strm->queue)) != NULL) {
          FUNC2(strm, t);
        }
        FUNC0(strm->excl, 1, 0);
      }
    }
    if (stream_count == 0) {
      break;
    }
  }
  return NULL;
}