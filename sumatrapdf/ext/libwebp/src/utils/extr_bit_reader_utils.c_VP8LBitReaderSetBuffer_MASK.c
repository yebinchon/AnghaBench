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
struct TYPE_4__ {size_t len_; int eos_; size_t pos_; int /*<<< orphan*/ * buf_; } ;
typedef  TYPE_1__ VP8LBitReader ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(VP8LBitReader* const br,
                            const uint8_t* const buf, size_t len) {
  FUNC1(br != NULL);
  FUNC1(buf != NULL);
  FUNC1(len < 0xfffffff8u);   // can't happen with a RIFF chunk.
  br->buf_ = buf;
  br->len_ = len;
  // pos_ > len_ should be considered a param error.
  br->eos_ = (br->pos_ > br->len_) || FUNC0(br);
}