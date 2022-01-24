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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/ * literal_; } ;
typedef  TYPE_1__ VP8LHistogram ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int const,int) ; 

VP8LHistogram* FUNC3(int cache_bits) {
  VP8LHistogram* histo = NULL;
  const int total_size = FUNC0(cache_bits);
  uint8_t* const memory = (uint8_t*)FUNC2(total_size, sizeof(*memory));
  if (memory == NULL) return NULL;
  histo = (VP8LHistogram*)memory;
  // literal_ won't necessary be aligned.
  histo->literal_ = (uint32_t*)(memory + sizeof(VP8LHistogram));
  FUNC1(histo, cache_bits, /*init_arrays=*/ 0);
  return histo;
}