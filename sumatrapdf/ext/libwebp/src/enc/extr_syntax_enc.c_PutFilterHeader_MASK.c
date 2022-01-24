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
struct TYPE_3__ {scalar_t__ i4x4_lf_delta_; int const simple_; int /*<<< orphan*/  sharpness_; int /*<<< orphan*/  level_; } ;
typedef  TYPE_1__ VP8EncFilterHeader ;
typedef  int /*<<< orphan*/  VP8BitWriter ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ * const,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(VP8BitWriter* const bw,
                            const VP8EncFilterHeader* const hdr) {
  const int use_lf_delta = (hdr->i4x4_lf_delta_ != 0);
  FUNC0(bw, hdr->simple_);
  FUNC1(bw, hdr->level_, 6);
  FUNC1(bw, hdr->sharpness_, 3);
  if (FUNC0(bw, use_lf_delta)) {
    // '0' is the default value for i4x4_lf_delta_ at frame #0.
    const int need_update = (hdr->i4x4_lf_delta_ != 0);
    if (FUNC0(bw, need_update)) {
      // we don't use ref_lf_delta => emit four 0 bits
      FUNC1(bw, 0, 4);
      // we use mode_lf_delta for i4x4
      FUNC2(bw, hdr->i4x4_lf_delta_, 6);
      FUNC1(bw, 0, 3);    // all others unused
    }
  }
}