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
struct strm_task {scalar_t__ (* func ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_7__ {scalar_t__ mode; } ;
typedef  TYPE_1__ strm_stream ;
typedef  scalar_t__ (* strm_callback ) (TYPE_1__*,int /*<<< orphan*/ ) ;

/* Variables and functions */
 scalar_t__ STRM_NG ; 
 int /*<<< orphan*/  FUNC0 (struct strm_task*) ; 
 scalar_t__ strm_dying ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ strm_killed ; 
 scalar_t__ strm_option_verbose ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(strm_stream* strm, struct strm_task* task)
{
  strm_callback func = task->func;
  strm_value data = task->data;

  FUNC0(task);
  if (strm->mode == strm_killed) return;
  if ((*func)(strm, data) == STRM_NG) {
    if (strm_option_verbose) {
      FUNC1(strm);
    }
  }
  if (strm->mode == strm_dying) {
    FUNC2(strm);
  }
}