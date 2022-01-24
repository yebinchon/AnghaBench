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
typedef  int /*<<< orphan*/  VP8Io ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WEBP_DECODER_ABI_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 

int FUNC2(VP8Io* const io, int version) {
  if (FUNC0(version, WEBP_DECODER_ABI_VERSION)) {
    return 0;  // mismatch error
  }
  if (io != NULL) {
    FUNC1(io, 0, sizeof(*io));
  }
  return 1;
}