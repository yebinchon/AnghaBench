#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* writer ) (int /*<<< orphan*/  const*,int,TYPE_1__ const* const) ;} ;
typedef  TYPE_1__ WebPPicture ;
typedef  scalar_t__ WebPEncodingError ;
typedef  int /*<<< orphan*/  VP8LBitWriter ;

/* Variables and functions */
 size_t const CHUNK_HEADER_SIZE ; 
 size_t const TAG_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ * const) ; 
 size_t FUNC1 (int /*<<< orphan*/ * const) ; 
 size_t const VP8L_SIGNATURE_SIZE ; 
 scalar_t__ VP8_ENC_ERROR_BAD_WRITE ; 
 scalar_t__ VP8_ENC_OK ; 
 scalar_t__ FUNC2 (TYPE_1__ const* const,size_t const,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const* const,size_t const,TYPE_1__ const* const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,TYPE_1__ const* const) ; 

__attribute__((used)) static WebPEncodingError FUNC5(const WebPPicture* const pic,
                                    VP8LBitWriter* const bw,
                                    size_t* const coded_size) {
  WebPEncodingError err = VP8_ENC_OK;
  const uint8_t* const webpll_data = FUNC0(bw);
  const size_t webpll_size = FUNC1(bw);
  const size_t vp8l_size = VP8L_SIGNATURE_SIZE + webpll_size;
  const size_t pad = vp8l_size & 1;
  const size_t riff_size = TAG_SIZE + CHUNK_HEADER_SIZE + vp8l_size + pad;

  err = FUNC2(pic, riff_size, vp8l_size);
  if (err != VP8_ENC_OK) goto Error;

  if (!pic->writer(webpll_data, webpll_size, pic)) {
    err = VP8_ENC_ERROR_BAD_WRITE;
    goto Error;
  }

  if (pad) {
    const uint8_t pad_byte[1] = { 0 };
    if (!pic->writer(pad_byte, 1, pic)) {
      err = VP8_ENC_ERROR_BAD_WRITE;
      goto Error;
    }
  }
  *coded_size = CHUNK_HEADER_SIZE + riff_size;
  return VP8_ENC_OK;

 Error:
  return err;
}