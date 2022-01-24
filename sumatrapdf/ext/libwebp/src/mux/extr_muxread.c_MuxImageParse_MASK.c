#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_19__ {int is_partial_; int /*<<< orphan*/ * img_; int /*<<< orphan*/ * alpha_; int /*<<< orphan*/ * header_; TYPE_4__* unknown_; } ;
typedef  TYPE_2__ WebPMuxImage ;
struct TYPE_20__ {size_t const member_1; int /*<<< orphan*/  const* member_0; } ;
typedef  TYPE_3__ WebPData ;
struct TYPE_18__ {size_t size; int /*<<< orphan*/ * bytes; } ;
struct TYPE_21__ {scalar_t__ tag_; TYPE_1__ data_; } ;
typedef  TYPE_4__ WebPChunk ;
struct TYPE_22__ {scalar_t__ tag; } ;

/* Variables and functions */
 size_t ANMF_CHUNK_SIZE ; 
 size_t CHUNK_HEADER_SIZE ; 
 scalar_t__ FUNC0 (TYPE_4__*,TYPE_4__***) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__ const*,int,scalar_t__) ; 
 size_t FUNC2 (TYPE_4__*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/  const*,size_t,size_t,int) ; 
 size_t IDX_ANMF ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__* const) ; 
#define  WEBP_CHUNK_ALPHA 130 
#define  WEBP_CHUNK_IMAGE 129 
#define  WEBP_CHUNK_UNKNOWN 128 
 scalar_t__ WEBP_MUX_OK ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 TYPE_5__* kChunks ; 

__attribute__((used)) static int FUNC10(const WebPChunk* const chunk, int copy_data,
                         WebPMuxImage* const wpi) {
  const uint8_t* bytes = chunk->data_.bytes;
  size_t size = chunk->data_.size;
  const uint8_t* const last = bytes + size;
  WebPChunk subchunk;
  size_t subchunk_size;
  WebPChunk** unknown_chunk_list = &wpi->unknown_;
  FUNC4(&subchunk);

  FUNC9(chunk->tag_ == kChunks[IDX_ANMF].tag);
  FUNC9(!wpi->is_partial_);

  // ANMF.
  {
    const size_t hdr_size = ANMF_CHUNK_SIZE;
    const WebPData temp = { bytes, hdr_size };
    // Each of ANMF chunk contain a header at the beginning. So, its size should
    // be at least 'hdr_size'.
    if (size < hdr_size) goto Fail;
    FUNC1(&subchunk, &temp, copy_data, chunk->tag_);
  }
  FUNC6(&subchunk, &wpi->header_);
  wpi->is_partial_ = 1;  // Waiting for ALPH and/or VP8/VP8L chunks.

  // Rest of the chunks.
  subchunk_size = FUNC2(&subchunk) - CHUNK_HEADER_SIZE;
  bytes += subchunk_size;
  size -= subchunk_size;

  while (bytes != last) {
    FUNC4(&subchunk);
    if (FUNC7(&subchunk, bytes, size, size,
                             copy_data) != WEBP_MUX_OK) {
      goto Fail;
    }
    switch (FUNC3(subchunk.tag_)) {
      case WEBP_CHUNK_ALPHA:
        if (wpi->alpha_ != NULL) goto Fail;  // Consecutive ALPH chunks.
        if (FUNC6(&subchunk, &wpi->alpha_) != WEBP_MUX_OK) goto Fail;
        wpi->is_partial_ = 1;  // Waiting for a VP8 chunk.
        break;
      case WEBP_CHUNK_IMAGE:
        if (wpi->img_ != NULL) goto Fail;  // Only 1 image chunk allowed.
        if (FUNC6(&subchunk, &wpi->img_) != WEBP_MUX_OK) goto Fail;
        if (!FUNC8(wpi)) goto Fail;
        wpi->is_partial_ = 0;  // wpi is completely filled.
        break;
      case WEBP_CHUNK_UNKNOWN:
        if (wpi->is_partial_) {
          goto Fail;  // Encountered an unknown chunk
                      // before some image chunks.
        }
        if (FUNC0(&subchunk, &unknown_chunk_list) != WEBP_MUX_OK) {
          goto Fail;
        }
        break;
      default:
        goto Fail;
        break;
    }
    subchunk_size = FUNC2(&subchunk);
    bytes += subchunk_size;
    size -= subchunk_size;
  }
  if (wpi->is_partial_) goto Fail;
  return 1;

 Fail:
  FUNC5(&subchunk);
  return 0;
}