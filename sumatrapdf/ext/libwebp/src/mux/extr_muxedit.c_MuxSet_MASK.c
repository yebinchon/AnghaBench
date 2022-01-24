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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  WebPMuxError ;
struct TYPE_4__ {int /*<<< orphan*/  unknown_; int /*<<< orphan*/  xmp_; int /*<<< orphan*/  exif_; int /*<<< orphan*/  anim_; int /*<<< orphan*/  iccp_; int /*<<< orphan*/  vp8x_; } ;
typedef  TYPE_1__ WebPMux ;
typedef  int /*<<< orphan*/  WebPData ;
typedef  int /*<<< orphan*/  WebPChunk ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
typedef  size_t CHUNK_INDEX ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDX_ANIM ; 
 int /*<<< orphan*/  IDX_EXIF ; 
 int /*<<< orphan*/  IDX_ICCP ; 
 int /*<<< orphan*/  IDX_UNKNOWN ; 
 int /*<<< orphan*/  IDX_VP8X ; 
 int /*<<< orphan*/  IDX_XMP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WEBP_MUX_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_2__* kChunks ; 

__attribute__((used)) static WebPMuxError FUNC5(WebPMux* const mux, uint32_t tag,
                           const WebPData* const data, int copy_data) {
  WebPChunk chunk;
  WebPMuxError err = WEBP_MUX_NOT_FOUND;
  const CHUNK_INDEX idx = FUNC0(tag);
  FUNC4(mux != NULL);
  FUNC4(!FUNC2(kChunks[idx].id));

  FUNC1(&chunk);
  FUNC3(IDX_VP8X,    &mux->vp8x_);
  FUNC3(IDX_ICCP,    &mux->iccp_);
  FUNC3(IDX_ANIM,    &mux->anim_);
  FUNC3(IDX_EXIF,    &mux->exif_);
  FUNC3(IDX_XMP,     &mux->xmp_);
  FUNC3(IDX_UNKNOWN, &mux->unknown_);
  return err;
}