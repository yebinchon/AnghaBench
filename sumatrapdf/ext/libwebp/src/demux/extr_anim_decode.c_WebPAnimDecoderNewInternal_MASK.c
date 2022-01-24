#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  WebPData ;
typedef  int /*<<< orphan*/  WebPAnimDecoderOptions ;
struct TYPE_7__ {unsigned long long canvas_width; int canvas_height; void* frame_count; void* bgcolor; void* loop_count; } ;
struct TYPE_8__ {int /*<<< orphan*/ * prev_frame_disposed_; TYPE_1__ info_; int /*<<< orphan*/ * curr_frame_; int /*<<< orphan*/ * demux_; } ;
typedef  TYPE_2__ WebPAnimDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long long NUM_CHANNELS ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WEBP_DEMUX_ABI_VERSION ; 
 int /*<<< orphan*/  WEBP_FF_BACKGROUND_COLOR ; 
 int /*<<< orphan*/  WEBP_FF_CANVAS_HEIGHT ; 
 int /*<<< orphan*/  WEBP_FF_CANVAS_WIDTH ; 
 int /*<<< orphan*/  WEBP_FF_FRAME_COUNT ; 
 int /*<<< orphan*/  WEBP_FF_LOOP_COUNT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long long,int) ; 

WebPAnimDecoder* FUNC8(
    const WebPData* webp_data, const WebPAnimDecoderOptions* dec_options,
    int abi_version) {
  WebPAnimDecoderOptions options;
  WebPAnimDecoder* dec = NULL;
  if (webp_data == NULL ||
      FUNC2(abi_version, WEBP_DEMUX_ABI_VERSION)) {
    return NULL;
  }

  // Note: calloc() so that the pointer members are initialized to NULL.
  dec = (WebPAnimDecoder*)FUNC7(1ULL, sizeof(*dec));
  if (dec == NULL) goto Error;

  if (dec_options != NULL) {
    options = *dec_options;
  } else {
    FUNC1(&options);
  }
  if (!FUNC0(&options, dec)) goto Error;

  dec->demux_ = FUNC5(webp_data);
  if (dec->demux_ == NULL) goto Error;

  dec->info_.canvas_width = FUNC6(dec->demux_, WEBP_FF_CANVAS_WIDTH);
  dec->info_.canvas_height = FUNC6(dec->demux_, WEBP_FF_CANVAS_HEIGHT);
  dec->info_.loop_count = FUNC6(dec->demux_, WEBP_FF_LOOP_COUNT);
  dec->info_.bgcolor = FUNC6(dec->demux_, WEBP_FF_BACKGROUND_COLOR);
  dec->info_.frame_count = FUNC6(dec->demux_, WEBP_FF_FRAME_COUNT);

  // Note: calloc() because we fill frame with zeroes as well.
  dec->curr_frame_ = (uint8_t*)FUNC7(
      dec->info_.canvas_width * NUM_CHANNELS, dec->info_.canvas_height);
  if (dec->curr_frame_ == NULL) goto Error;
  dec->prev_frame_disposed_ = (uint8_t*)FUNC7(
      dec->info_.canvas_width * NUM_CHANNELS, dec->info_.canvas_height);
  if (dec->prev_frame_disposed_ == NULL) goto Error;

  FUNC4(dec);
  return dec;

 Error:
  FUNC3(dec);
  return NULL;
}