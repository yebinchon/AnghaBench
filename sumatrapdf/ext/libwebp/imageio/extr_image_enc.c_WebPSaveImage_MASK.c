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
typedef  scalar_t__ WebPOutputFileFormat ;
typedef  int /*<<< orphan*/  WebPDecBuffer ;
typedef  int /*<<< orphan*/  W_CHAR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ALPHA_PLANE_ONLY ; 
 scalar_t__ ARGB ; 
 scalar_t__ Argb ; 
 scalar_t__ BGR ; 
 scalar_t__ BGRA ; 
 scalar_t__ BMP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ PAM ; 
 scalar_t__ PGM ; 
 scalar_t__ PNG ; 
 scalar_t__ PPM ; 
 scalar_t__ RAW_YUV ; 
 scalar_t__ RGB ; 
 scalar_t__ RGBA ; 
 scalar_t__ RGBA_4444 ; 
 scalar_t__ RGB_565 ; 
 scalar_t__ TIFF ; 
 int /*<<< orphan*/ * FUNC1 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char const* const,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const) ; 
 int FUNC9 (char const* const,int const,...) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const) ; 
 scalar_t__ YUV ; 
 scalar_t__ YUVA ; 
 scalar_t__ bgrA ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ rgbA ; 
 scalar_t__ rgbA_4444 ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 

int FUNC14(const WebPDecBuffer* const buffer,
                  WebPOutputFileFormat format,
                  const char* const out_file_name) {
  FILE* fout = NULL;
  int needs_open_file = 1;
  const int use_stdout =
      (out_file_name != NULL) && !FUNC3(out_file_name, "-");
  int ok = 1;

  if (buffer == NULL || out_file_name == NULL) return 0;

#ifdef HAVE_WINCODEC_H
  needs_open_file = (format != PNG);
#endif

  if (needs_open_file) {
    fout = use_stdout ? FUNC0(stdout)
                      : FUNC1(out_file_name, "wb");
    if (fout == NULL) {
      FUNC2(stderr, "Error opening output file %s\n",
               (const W_CHAR*)out_file_name);
      return 0;
    }
  }

  if (format == PNG ||
      format == RGBA || format == BGRA || format == ARGB ||
      format == rgbA || format == bgrA || format == Argb) {
#ifdef HAVE_WINCODEC_H
    ok &= WebPWritePNG(out_file_name, use_stdout, buffer);
#else
    ok &= FUNC9(fout, buffer);
#endif
  } else if (format == PAM) {
    ok &= FUNC7(fout, buffer);
  } else if (format == PPM || format == RGB || format == BGR) {
    ok &= FUNC10(fout, buffer);
  } else if (format == RGBA_4444 || format == RGB_565 || format == rgbA_4444) {
    ok &= FUNC4(fout, buffer);
  } else if (format == BMP) {
    ok &= FUNC6(fout, buffer);
  } else if (format == TIFF) {
    ok &= FUNC11(fout, buffer);
  } else if (format == RAW_YUV) {
    ok &= FUNC12(fout, buffer);
  } else if (format == PGM || format == YUV || format == YUVA) {
    ok &= FUNC8(fout, buffer);
  } else if (format == ALPHA_PLANE_ONLY) {
    ok &= FUNC5(fout, buffer);
  }
  if (fout != NULL && fout != stdout) {
    FUNC13(fout);
  }
  return ok;
}