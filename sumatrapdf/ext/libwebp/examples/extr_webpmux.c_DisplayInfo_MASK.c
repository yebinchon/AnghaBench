#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_14__ {scalar_t__ size; int /*<<< orphan*/  bytes; } ;
struct TYPE_10__ {int x_offset; int y_offset; scalar_t__ dispose_method; scalar_t__ blend_method; int duration; TYPE_9__ bitstream; } ;
typedef  TYPE_1__ WebPMuxFrameInfo ;
typedef  scalar_t__ WebPMuxError ;
struct TYPE_11__ {int bgcolor; int loop_count; } ;
typedef  TYPE_2__ WebPMuxAnimParams ;
typedef  int /*<<< orphan*/  WebPMux ;
struct TYPE_12__ {scalar_t__ size; } ;
typedef  TYPE_3__ WebPData ;
typedef  int /*<<< orphan*/  WebPChunkId ;
struct TYPE_13__ {int width; int height; int format; scalar_t__ has_alpha; } ;
typedef  TYPE_4__ WebPBitstreamFeatures ;
typedef  scalar_t__ VP8StatusCode ;

/* Variables and functions */
 int ALPHA_FLAG ; 
 int ANIMATION_FLAG ; 
 int EXIF_FLAG ; 
 int ICCP_FLAG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const* const,int) ; 
 scalar_t__ const VP8_STATUS_OK ; 
 int /*<<< orphan*/  WEBP_CHUNK_ANMF ; 
 scalar_t__ WEBP_MUX_BLEND ; 
 scalar_t__ WEBP_MUX_DISPOSE_NONE ; 
 scalar_t__ WEBP_MUX_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,char*,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int*) ; 
 int XMP_FLAG ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static WebPMuxError FUNC12(const WebPMux* mux) {
  int width, height;
  uint32_t flag;

  WebPMuxError err = FUNC5(mux, &width, &height);
  FUNC10(err == WEBP_MUX_OK);  // As WebPMuxCreate() was successful earlier.
  FUNC11("Canvas size: %d x %d\n", width, height);

  err = FUNC7(mux, &flag);
  FUNC0("Failed to retrieve features\n");

  if (flag == 0) {
    FUNC11("No features present.\n");
    return err;
  }

  // Print the features present.
  FUNC11("Features present:");
  if (flag & ANIMATION_FLAG) FUNC11(" animation");
  if (flag & ICCP_FLAG)      FUNC11(" ICC profile");
  if (flag & EXIF_FLAG)      FUNC11(" EXIF metadata");
  if (flag & XMP_FLAG)       FUNC11(" XMP metadata");
  if (flag & ALPHA_FLAG)     FUNC11(" transparency");
  FUNC11("\n");

  if (flag & ANIMATION_FLAG) {
    const WebPChunkId id = WEBP_CHUNK_ANMF;
    const char* const type_str = "frame";
    int nFrames;

    WebPMuxAnimParams params;
    err = FUNC4(mux, &params);
    FUNC10(err == WEBP_MUX_OK);
    FUNC11("Background color : 0x%.8X  Loop Count : %d\n",
           params.bgcolor, params.loop_count);

    err = FUNC9(mux, id, &nFrames);
    FUNC10(err == WEBP_MUX_OK);

    FUNC11("Number of %ss: %d\n", type_str, nFrames);
    if (nFrames > 0) {
      int i;
      FUNC11("No.: width height alpha x_offset y_offset ");
      FUNC11("duration   dispose blend ");
      FUNC11("image_size  compression\n");
      for (i = 1; i <= nFrames; i++) {
        WebPMuxFrameInfo frame;
        err = FUNC8(mux, i, &frame);
        if (err == WEBP_MUX_OK) {
          WebPBitstreamFeatures features;
          const VP8StatusCode status = FUNC3(
              frame.bitstream.bytes, frame.bitstream.size, &features);
          FUNC10(status == VP8_STATUS_OK);  // Checked by WebPMuxCreate().
          (void)status;
          FUNC11("%3d: %5d %5d %5s %8d %8d ", i, features.width,
                 features.height, features.has_alpha ? "yes" : "no",
                 frame.x_offset, frame.y_offset);
          {
            const char* const dispose =
                (frame.dispose_method == WEBP_MUX_DISPOSE_NONE) ? "none"
                                                                : "background";
            const char* const blend =
                (frame.blend_method == WEBP_MUX_BLEND) ? "yes" : "no";
            FUNC11("%8d %10s %5s ", frame.duration, dispose, blend);
          }
          FUNC11("%10d %11s\n", (int)frame.bitstream.size,
                 (features.format == 1) ? "lossy" :
                 (features.format == 2) ? "lossless" :
                                          "undefined");
        }
        FUNC2(&frame.bitstream);
        FUNC1("Failed to retrieve %s#%d\n", type_str, i);
      }
    }
  }

  if (flag & ICCP_FLAG) {
    WebPData icc_profile;
    err = FUNC6(mux, "ICCP", &icc_profile);
    FUNC10(err == WEBP_MUX_OK);
    FUNC11("Size of the ICC profile data: %d\n", (int)icc_profile.size);
  }

  if (flag & EXIF_FLAG) {
    WebPData exif;
    err = FUNC6(mux, "EXIF", &exif);
    FUNC10(err == WEBP_MUX_OK);
    FUNC11("Size of the EXIF metadata: %d\n", (int)exif.size);
  }

  if (flag & XMP_FLAG) {
    WebPData xmp;
    err = FUNC6(mux, "XMP ", &xmp);
    FUNC10(err == WEBP_MUX_OK);
    FUNC11("Size of the XMP metadata: %d\n", (int)xmp.size);
  }

  if ((flag & ALPHA_FLAG) && !(flag & ANIMATION_FLAG)) {
    WebPMuxFrameInfo image;
    err = FUNC8(mux, 1, &image);
    if (err == WEBP_MUX_OK) {
      FUNC11("Size of the image (with alpha): %d\n", (int)image.bitstream.size);
    }
    FUNC2(&image.bitstream);
    FUNC0("Failed to retrieve the image\n");
  }

  return WEBP_MUX_OK;
}