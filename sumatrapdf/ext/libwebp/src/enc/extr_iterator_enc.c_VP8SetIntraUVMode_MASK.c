#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* mb_; } ;
typedef  TYPE_2__ VP8EncIterator ;
struct TYPE_4__ {int uv_mode_; } ;

/* Variables and functions */

void FUNC0(const VP8EncIterator* const it, int mode) {
  it->mb_->uv_mode_ = mode;
}