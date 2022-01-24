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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int max_size; int size; int /*<<< orphan*/ ** histograms; } ;
typedef  TYPE_1__ VP8LHistogramSet ;
typedef  int /*<<< orphan*/  VP8LHistogram ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 size_t FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t const,int) ; 

VP8LHistogramSet* FUNC4(int size, int cache_bits) {
  int i;
  VP8LHistogramSet* set;
  const size_t total_size = FUNC1(size, cache_bits);
  uint8_t* memory = (uint8_t*)FUNC3(total_size, sizeof(*memory));
  if (memory == NULL) return NULL;

  set = (VP8LHistogramSet*)memory;
  memory += sizeof(*set);
  set->histograms = (VP8LHistogram**)memory;
  set->max_size = size;
  set->size = size;
  FUNC0(set, cache_bits);
  for (i = 0; i < size; ++i) {
    FUNC2(set->histograms[i], cache_bits, /*init_arrays=*/ 0);
  }
  return set;
}