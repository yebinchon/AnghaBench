#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_27__ {size_t data_size; int have_all_data; int offset; int /*<<< orphan*/  alpha_data_size; int /*<<< orphan*/  alpha_data; int /*<<< orphan*/  is_lossless; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ WebPHeaderStructure ;
struct TYPE_28__ {int /*<<< orphan*/  output; TYPE_9__* options; } ;
typedef  TYPE_2__ WebPDecParams ;
typedef  scalar_t__ VP8StatusCode ;
struct TYPE_29__ {scalar_t__ status_; } ;
typedef  TYPE_3__ VP8LDecoder ;
struct TYPE_30__ {int data_size; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ VP8Io ;
struct TYPE_31__ {scalar_t__ status_; int /*<<< orphan*/  mt_method_; int /*<<< orphan*/  alpha_data_size_; int /*<<< orphan*/  alpha_data_; } ;
typedef  TYPE_5__ VP8Decoder ;
struct TYPE_32__ {scalar_t__ flip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__* const,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__* const,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,TYPE_5__* const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__* const,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__* const) ; 
 TYPE_3__* FUNC9 () ; 
 TYPE_5__* FUNC10 () ; 
 scalar_t__ VP8_STATUS_OK ; 
 scalar_t__ VP8_STATUS_OUT_OF_MEMORY ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__* const,TYPE_4__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VP8StatusCode FUNC17(const uint8_t* const data, size_t data_size,
                                WebPDecParams* const params) {
  VP8StatusCode status;
  VP8Io io;
  WebPHeaderStructure headers;

  headers.data = data;
  headers.data_size = data_size;
  headers.have_all_data = 1;
  status = FUNC15(&headers);   // Process Pre-VP8 chunks.
  if (status != VP8_STATUS_OK) {
    return status;
  }

  FUNC16(params != NULL);
  FUNC5(&io);
  io.data = headers.data + headers.offset;
  io.data_size = headers.data_size - headers.offset;
  FUNC14(params, &io);  // Plug the I/O functions.

  if (!headers.is_lossless) {
    VP8Decoder* const dec = FUNC10();
    if (dec == NULL) {
      return VP8_STATUS_OUT_OF_MEMORY;
    }
    dec->alpha_data_ = headers.alpha_data;
    dec->alpha_data_size_ = headers.alpha_data_size;

    // Decode bitstream header, update io->width/io->height.
    if (!FUNC2(dec, &io)) {
      status = dec->status_;   // An error occurred. Grab error status.
    } else {
      // Allocate/check output buffers.
      status = FUNC11(io.width, io.height, params->options,
                                     params->output);
      if (status == VP8_STATUS_OK) {  // Decode
        // This change must be done before calling VP8Decode()
        dec->mt_method_ = FUNC3(params->options, &headers,
                                             io.width, io.height);
        FUNC4(params->options, dec);
        if (!FUNC0(dec, &io)) {
          status = dec->status_;
        }
      }
    }
    FUNC1(dec);
  } else {
    VP8LDecoder* const dec = FUNC9();
    if (dec == NULL) {
      return VP8_STATUS_OUT_OF_MEMORY;
    }
    if (!FUNC6(dec, &io)) {
      status = dec->status_;   // An error occurred. Grab error status.
    } else {
      // Allocate/check output buffers.
      status = FUNC11(io.width, io.height, params->options,
                                     params->output);
      if (status == VP8_STATUS_OK) {  // Decode
        if (!FUNC7(dec)) {
          status = dec->status_;
        }
      }
    }
    FUNC8(dec);
  }

  if (status != VP8_STATUS_OK) {
    FUNC13(params->output);
  } else {
    if (params->options != NULL && params->options->flip) {
      // This restores the original stride values if options->flip was used
      // during the call to WebPAllocateDecBuffer above.
      status = FUNC12(params->output);
    }
  }
  return status;
}