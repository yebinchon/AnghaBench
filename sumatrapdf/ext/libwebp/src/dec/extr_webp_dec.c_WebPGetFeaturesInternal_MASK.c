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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  WebPBitstreamFeatures ;
typedef  int /*<<< orphan*/  VP8StatusCode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VP8_STATUS_INVALID_PARAM ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WEBP_DECODER_ABI_VERSION ; 

VP8StatusCode FUNC2(const uint8_t* data, size_t data_size,
                                      WebPBitstreamFeatures* features,
                                      int version) {
  if (FUNC1(version, WEBP_DECODER_ABI_VERSION)) {
    return VP8_STATUS_INVALID_PARAM;   // version mismatch
  }
  if (features == NULL) {
    return VP8_STATUS_INVALID_PARAM;
  }
  return FUNC0(data, data_size, features);
}