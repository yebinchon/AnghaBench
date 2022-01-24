#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_20__ {scalar_t__ bytes; } ;
struct TYPE_18__ {int duration; TYPE_4__ bitstream; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ WebPMuxFrameInfo ;
typedef  int /*<<< orphan*/  WebPMuxError ;
struct TYPE_19__ {int member_0; int loop_count; int /*<<< orphan*/  bgcolor; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_3__ WebPMuxAnimParams ;
typedef  int /*<<< orphan*/  WebPMux ;
typedef  TYPE_4__ WebPData ;
struct TYPE_21__ {int action_type_; size_t type_; int arg_count_; int /*<<< orphan*/  input_; int /*<<< orphan*/  output_; TYPE_1__* args_; } ;
struct TYPE_17__ {int /*<<< orphan*/  params_; int /*<<< orphan*/  filename_; int /*<<< orphan*/  subtype_; } ;
typedef  TYPE_5__ Config ;

/* Variables and functions */
#define  ACTION_DURATION 139 
#define  ACTION_GET 138 
#define  ACTION_INFO 137 
#define  ACTION_SET 136 
#define  ACTION_STRIP 135 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Err2 ; 
 int /*<<< orphan*/  Err3 ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_4__*) ; 
#define  FEATURE_ANMF 134 
#define  FEATURE_EXIF 133 
#define  FEATURE_ICCP 132 
#define  FEATURE_XMP 131 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_5__ const*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
#define  SUBTYPE_ANMF 130 
#define  SUBTYPE_BGCOLOR 129 
#define  SUBTYPE_LOOP 128 
 int /*<<< orphan*/  WEBP_CHUNK_ANMF ; 
 int /*<<< orphan*/  WEBP_MUX_MEMORY_ERROR ; 
 int /*<<< orphan*/  WEBP_MUX_OK ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (int*) ; 
 scalar_t__ FUNC15 (size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int FUNC25 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC29 (void*) ; 
 int* kDescriptions ; 
 int /*<<< orphan*/ * kFourccList ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC30(const Config* config) {
  WebPMux* mux = NULL;
  WebPData chunk;
  WebPMuxError err = WEBP_MUX_OK;
  int ok = 1;

  switch (config->action_type_) {
    case ACTION_GET: {
      ok = FUNC0(config->input_, &mux);
      if (!ok) goto Err2;
      switch (config->type_) {
        case FEATURE_ANMF:
          ok = FUNC10(mux, config);
          break;

        case FEATURE_ICCP:
        case FEATURE_EXIF:
        case FEATURE_XMP:
          err = FUNC18(mux, kFourccList[config->type_], &chunk);
          if (err != WEBP_MUX_OK) {
            FUNC5("ERROR (%s): Could not get the %s.\n",
                        FUNC6(err), kDescriptions[config->type_], Err2);
          }
          ok = FUNC25(config->output_, &chunk);
          break;

        default:
          FUNC3("ERROR: Invalid feature for action 'get'.\n", Err2);
          break;
      }
      break;
    }
    case ACTION_SET: {
      switch (config->type_) {
        case FEATURE_ANMF: {
          int i;
          WebPMuxAnimParams params = { 0xFFFFFFFF, 0 };
          mux = FUNC20();
          if (mux == NULL) {
            FUNC4("ERROR (%s): Could not allocate a mux object.\n",
                        FUNC6(WEBP_MUX_MEMORY_ERROR), Err2);
          }
          for (i = 0; i < config->arg_count_; ++i) {
            switch (config->args_[i].subtype_) {
              case SUBTYPE_BGCOLOR: {
                uint32_t bgcolor;
                ok = FUNC11(config->args_[i].params_, &bgcolor);
                if (!ok) {
                  FUNC3("ERROR: Could not parse the background color \n",
                              Err2);
                }
                params.bgcolor = bgcolor;
                break;
              }
              case SUBTYPE_LOOP: {
                int parse_error = 0;
                const int loop_count =
                    FUNC7(config->args_[i].params_, 10, &parse_error);
                if (loop_count < 0 || loop_count > 65535) {
                  // Note: This is only a 'necessary' condition for loop_count
                  // to be valid. The 'sufficient' conditioned in checked in
                  // WebPMuxSetAnimationParams() method called later.
                  FUNC3("ERROR: Loop count must be in the range 0 to "
                              "65535.\n", Err2);
                }
                ok = !parse_error;
                if (!ok) goto Err2;
                params.loop_count = loop_count;
                break;
              }
              case SUBTYPE_ANMF: {
                WebPMuxFrameInfo frame;
                frame.id = WEBP_CHUNK_ANMF;
                ok = FUNC9(config->args_[i].filename_,
                                              &frame.bitstream);
                if (!ok) goto Err2;
                ok = FUNC12(config->args_[i].params_, &frame);
                if (!ok) {
                  FUNC13(&frame.bitstream);
                  FUNC3("ERROR: Could not parse frame properties.\n",
                              Err2);
                }
                err = FUNC22(mux, &frame, 1);
                FUNC13(&frame.bitstream);
                if (err != WEBP_MUX_OK) {
                  FUNC5("ERROR (%s): Could not add a frame at index %d."
                              "\n", FUNC6(err), i, Err2);
                }
                break;
              }
              default: {
                FUNC3("ERROR: Invalid subtype for 'frame'", Err2);
                break;
              }
            }
          }
          err = FUNC23(mux, &params);
          if (err != WEBP_MUX_OK) {
            FUNC4("ERROR (%s): Could not set animation parameters.\n",
                        FUNC6(err), Err2);
          }
          break;
        }

        case FEATURE_ICCP:
        case FEATURE_EXIF:
        case FEATURE_XMP: {
          ok = FUNC0(config->input_, &mux);
          if (!ok) goto Err2;
          ok = FUNC9(config->args_[0].filename_, &chunk);
          if (!ok) goto Err2;
          err = FUNC24(mux, kFourccList[config->type_], &chunk, 1);
          FUNC29((void*)chunk.bytes);
          if (err != WEBP_MUX_OK) {
            FUNC5("ERROR (%s): Could not set the %s.\n",
                        FUNC6(err), kDescriptions[config->type_], Err2);
          }
          break;
        }
        default: {
          FUNC3("ERROR: Invalid feature for action 'set'.\n", Err2);
          break;
        }
      }
      ok = FUNC26(mux, config->output_);
      break;
    }
    case ACTION_DURATION: {
      int num_frames;
      ok = FUNC0(config->input_, &mux);
      if (!ok) goto Err2;
      err = FUNC21(mux, WEBP_CHUNK_ANMF, &num_frames);
      ok = (err == WEBP_MUX_OK);
      if (!ok) {
        FUNC3("ERROR: can not parse the number of frames.\n", Err2);
      }
      if (num_frames == 0) {
        FUNC28(stderr, "Doesn't look like the source is animated. "
                        "Skipping duration setting.\n");
        ok = FUNC26(mux, config->output_);
        if (!ok) goto Err2;
      } else {
        int i;
        int* durations = NULL;
        WebPMux* new_mux = FUNC2(mux);
        if (new_mux == NULL) goto Err2;
        durations = (int*)FUNC15((size_t)num_frames * sizeof(*durations));
        if (durations == NULL) goto Err2;
        for (i = 0; i < num_frames; ++i) durations[i] = -1;

        // Parse intervals to process.
        for (i = 0; i < config->arg_count_; ++i) {
          int k;
          int args[3];
          int duration, start, end;
          const int nb_args = FUNC8(config->args_[i].params_,
                                            10, 3, args);
          ok = (nb_args >= 1);
          if (!ok) goto Err3;
          duration = args[0];
          if (duration < 0) {
            FUNC3("ERROR: duration must be strictly positive.\n", Err3);
          }

          if (nb_args == 1) {   // only duration is present -> use full interval
            start = 1;
            end = num_frames;
          } else {
            start = args[1];
            if (start <= 0) {
              start = 1;
            } else if (start > num_frames) {
              start = num_frames;
            }
            end = (nb_args >= 3) ? args[2] : start;
            if (end == 0 || end > num_frames) end = num_frames;
          }

          for (k = start; k <= end; ++k) {
            FUNC27(k >= 1 && k <= num_frames);
            durations[k - 1] = duration;
          }
        }

        // Apply non-negative durations to their destination frames.
        for (i = 1; i <= num_frames; ++i) {
          WebPMuxFrameInfo frame;
          err = FUNC19(mux, i, &frame);
          if (err != WEBP_MUX_OK || frame.id != WEBP_CHUNK_ANMF) {
            FUNC4("ERROR: can not retrieve frame #%d.\n", i, Err3);
          }
          if (durations[i - 1] >= 0) frame.duration = durations[i - 1];
          err = FUNC22(new_mux, &frame, 1);
          if (err != WEBP_MUX_OK) {
            FUNC4("ERROR: error push frame data #%d\n", i, Err3);
          }
          FUNC13(&frame.bitstream);
        }
        FUNC16(mux);
        ok = FUNC26(new_mux, config->output_);
        mux = new_mux;  // transfer for the WebPMuxDelete() call
        new_mux = NULL;

 Err3:
        FUNC14(durations);
        FUNC16(new_mux);
        if (!ok) goto Err2;
      }
      break;
    }
    case ACTION_STRIP: {
      ok = FUNC0(config->input_, &mux);
      if (!ok) goto Err2;
      if (config->type_ == FEATURE_ICCP || config->type_ == FEATURE_EXIF ||
          config->type_ == FEATURE_XMP) {
        err = FUNC17(mux, kFourccList[config->type_]);
        if (err != WEBP_MUX_OK) {
          FUNC5("ERROR (%s): Could not strip the %s.\n",
                      FUNC6(err), kDescriptions[config->type_], Err2);
        }
      } else {
        FUNC3("ERROR: Invalid feature for action 'strip'.\n", Err2);
        break;
      }
      ok = FUNC26(mux, config->output_);
      break;
    }
    case ACTION_INFO: {
      ok = FUNC0(config->input_, &mux);
      if (!ok) goto Err2;
      ok = (FUNC1(mux) == WEBP_MUX_OK);
      break;
    }
    default: {
      FUNC27(0);  // Invalid action.
      break;
    }
  }

 Err2:
  FUNC16(mux);
  return ok;
}