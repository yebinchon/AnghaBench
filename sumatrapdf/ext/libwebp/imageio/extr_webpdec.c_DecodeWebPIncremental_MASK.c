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
typedef  int /*<<< orphan*/  WebPIDecoder ;
typedef  int /*<<< orphan*/  WebPDecoderConfig ;
typedef  int /*<<< orphan*/  VP8StatusCode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  VP8_STATUS_INVALID_PARAM ; 
 int /*<<< orphan*/  VP8_STATUS_OK ; 
 int /*<<< orphan*/  VP8_STATUS_OUT_OF_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const* const,size_t,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const* const,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

VP8StatusCode FUNC5(
    const uint8_t* const data, size_t data_size,
    WebPDecoderConfig* const config) {
  VP8StatusCode status = VP8_STATUS_OK;
  if (config == NULL) return VP8_STATUS_INVALID_PARAM;

  FUNC0(config);

  // Decoding call.
  {
    WebPIDecoder* const idec = FUNC1(data, data_size, config);
    if (idec == NULL) {
      FUNC4(stderr, "Failed during WebPINewDecoder().\n");
      return VP8_STATUS_OUT_OF_MEMORY;
    } else {
      status = FUNC3(idec, data, data_size);
      FUNC2(idec);
    }
  }
  return status;
}