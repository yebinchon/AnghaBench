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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int size_; int /*<<< orphan*/ * offset_length_; } ;
typedef  TYPE_1__ VP8LHashChain ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(VP8LHashChain* const p, int size) {
  FUNC1(p->size_ == 0);
  FUNC1(p->offset_length_ == NULL);
  FUNC1(size > 0);
  p->offset_length_ =
      (uint32_t*)FUNC0(size, sizeof(*p->offset_length_));
  if (p->offset_length_ == NULL) return 0;
  p->size_ = size;

  return 1;
}