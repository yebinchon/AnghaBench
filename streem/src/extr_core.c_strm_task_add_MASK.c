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
struct strm_task {scalar_t__ mode; int /*<<< orphan*/  queue; } ;
typedef  struct strm_task strm_stream ;

/* Variables and functions */
 int /*<<< orphan*/  prod_queue ; 
 int /*<<< orphan*/  queue ; 
 scalar_t__ strm_producer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct strm_task*) ; 

void
FUNC1(strm_stream* strm, struct strm_task* task)
{
  FUNC0(strm->queue, task);
  if (strm->mode == strm_producer) {
    FUNC0(prod_queue, strm);
  }
  else {
    FUNC0(queue, strm);
  }
}