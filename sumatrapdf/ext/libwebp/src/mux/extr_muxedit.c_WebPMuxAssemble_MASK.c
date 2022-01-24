#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ WebPMuxError ;
struct TYPE_9__ {int /*<<< orphan*/  unknown_; int /*<<< orphan*/  xmp_; int /*<<< orphan*/  exif_; int /*<<< orphan*/  images_; int /*<<< orphan*/  anim_; int /*<<< orphan*/  iccp_; int /*<<< orphan*/  vp8x_; } ;
typedef  TYPE_1__ WebPMux ;
struct TYPE_10__ {size_t size; int /*<<< orphan*/ * bytes; } ;
typedef  TYPE_2__ WebPData ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 size_t RIFF_HEADER_SIZE ; 
 scalar_t__ WEBP_MUX_INVALID_ARGUMENT ; 
 scalar_t__ WEBP_MUX_MEMORY_ERROR ; 
 scalar_t__ WEBP_MUX_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned long long,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

WebPMuxError FUNC12(WebPMux* mux, WebPData* assembled_data) {
  size_t size = 0;
  uint8_t* data = NULL;
  uint8_t* dst = NULL;
  WebPMuxError err;

  if (assembled_data == NULL) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }
  // Clean up returned data, in case something goes wrong.
  FUNC11(assembled_data, 0, sizeof(*assembled_data));

  if (mux == NULL) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }

  // Finalize mux.
  err = FUNC5(mux);
  if (err != WEBP_MUX_OK) return err;
  err = FUNC2(mux);
  if (err != WEBP_MUX_OK) return err;

  // Allocate data.
  size = FUNC0(mux->vp8x_) + FUNC0(mux->iccp_)
       + FUNC0(mux->anim_) + FUNC3(mux->images_)
       + FUNC0(mux->exif_) + FUNC0(mux->xmp_)
       + FUNC0(mux->unknown_) + RIFF_HEADER_SIZE;

  data = (uint8_t*)FUNC9(1ULL, size);
  if (data == NULL) return WEBP_MUX_MEMORY_ERROR;

  // Emit header & chunks.
  dst = FUNC6(data, size);
  dst = FUNC1(mux->vp8x_, dst);
  dst = FUNC1(mux->iccp_, dst);
  dst = FUNC1(mux->anim_, dst);
  dst = FUNC4(mux->images_, dst);
  dst = FUNC1(mux->exif_, dst);
  dst = FUNC1(mux->xmp_, dst);
  dst = FUNC1(mux->unknown_, dst);
  FUNC10(dst == data + size);

  // Validate mux.
  err = FUNC7(mux);
  if (err != WEBP_MUX_OK) {
    FUNC8(data);
    data = NULL;
    size = 0;
  }

  // Finalize data.
  assembled_data->bytes = data;
  assembled_data->size = size;

  return err;
}