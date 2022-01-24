#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ size; } ;
struct TYPE_15__ {scalar_t__ id; TYPE_2__ bitstream; } ;
typedef  TYPE_1__ WebPMuxFrameInfo ;
typedef  scalar_t__ WebPMuxError ;
typedef  int /*<<< orphan*/  WebPMux ;
typedef  TYPE_2__ WebPData ;
struct TYPE_17__ {int out_frame_count_; } ;
typedef  TYPE_3__ WebPAnimEncoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__* const,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ WEBP_CHUNK_ANMF ; 
 scalar_t__ WEBP_MUX_BAD_DATA ; 
 scalar_t__ WEBP_MUX_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ * const,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ * const,int*,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ * const,int,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ * const,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static WebPMuxError FUNC10(WebPAnimEncoder* const enc,
                                        WebPData* const webp_data) {
  WebPMuxError err = WEBP_MUX_OK;
  int canvas_width, canvas_height;
  WebPMuxFrameInfo frame;
  WebPData full_image;
  WebPData webp_data2;
  WebPMux* const mux = FUNC4(webp_data, 0);
  if (mux == NULL) return WEBP_MUX_BAD_DATA;
  FUNC9(enc->out_frame_count_ == 1);
  FUNC2(&frame.bitstream);
  FUNC2(&full_image);
  FUNC2(&webp_data2);

  err = FUNC7(mux, 1, &frame);
  if (err != WEBP_MUX_OK) goto End;
  if (frame.id != WEBP_CHUNK_ANMF) goto End;  // Non-animation: nothing to do.
  err = FUNC6(mux, &canvas_width, &canvas_height);
  if (err != WEBP_MUX_OK) goto End;
  if (!FUNC0(enc, &frame, &full_image)) {
    err = WEBP_MUX_BAD_DATA;
    goto End;
  }
  err = FUNC8(mux, &full_image, 1);
  if (err != WEBP_MUX_OK) goto End;
  err = FUNC3(mux, &webp_data2);
  if (err != WEBP_MUX_OK) goto End;

  if (webp_data2.size < webp_data->size) {  // Pick 'webp_data2' if smaller.
    FUNC1(webp_data);
    *webp_data = webp_data2;
    FUNC2(&webp_data2);
  }

 End:
  FUNC1(&frame.bitstream);
  FUNC1(&full_image);
  FUNC5(mux);
  FUNC1(&webp_data2);
  return err;
}