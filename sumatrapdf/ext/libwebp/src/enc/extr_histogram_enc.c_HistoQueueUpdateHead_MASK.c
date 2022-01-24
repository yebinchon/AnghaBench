#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size; TYPE_1__* queue; } ;
struct TYPE_5__ {int cost_diff; } ;
typedef  TYPE_1__ HistogramPair ;
typedef  TYPE_2__ HistoQueue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(HistoQueue* const histo_queue,
                                 HistogramPair* const pair) {
  FUNC0(pair->cost_diff < 0.);
  FUNC0(pair >= histo_queue->queue &&
         pair < (histo_queue->queue + histo_queue->size));
  FUNC0(histo_queue->size > 0);
  if (pair->cost_diff < histo_queue->queue[0].cost_diff) {
    // Replace the best pair.
    const HistogramPair tmp = histo_queue->queue[0];
    histo_queue->queue[0] = *pair;
    *pair = tmp;
  }
}