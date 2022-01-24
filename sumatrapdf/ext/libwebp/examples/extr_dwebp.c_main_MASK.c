#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int WebPOutputFileFormat ;
struct TYPE_12__ {int no_fancy_upsampling; int bypass_filtering; int use_threads; int alpha_dithering_strength; int use_cropping; int use_scaling; int flip; void* scaled_height; void* scaled_width; void* crop_height; void* crop_width; void* crop_top; void* crop_left; void* dithering_strength; } ;
struct TYPE_15__ {size_t format; scalar_t__ has_alpha; } ;
struct TYPE_14__ {int width; int height; void* colorspace; } ;
struct TYPE_13__ {TYPE_1__ options; TYPE_4__ input; TYPE_3__ output; } ;
typedef  TYPE_2__ WebPDecoderConfig ;
typedef  TYPE_3__ WebPDecBuffer ;
typedef  TYPE_4__ WebPBitstreamFeatures ;
typedef  int /*<<< orphan*/  W_CHAR ;
typedef  scalar_t__ VP8StatusCode ;
typedef  int /*<<< orphan*/  Stopwatch ;

/* Variables and functions */
#define  ALPHA_PLANE_ONLY 148 
#define  ARGB 147 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int,int) ; 
#define  Argb 146 
#define  BGR 145 
#define  BGRA 144 
#define  BMP 143 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,size_t,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,size_t,TYPE_2__*) ; 
 void* FUNC3 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (char const**,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char const**) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/  const**,size_t*,TYPE_4__* const) ; 
 void* MODE_ARGB ; 
 void* MODE_Argb ; 
 void* MODE_BGR ; 
 void* MODE_BGRA ; 
 void* MODE_RGB ; 
 void* MODE_RGBA ; 
 void* MODE_RGBA_4444 ; 
 void* MODE_RGB_565 ; 
 void* MODE_YUV ; 
 void* MODE_YUVA ; 
 void* MODE_bgrA ; 
 void* MODE_rgbA ; 
 void* MODE_rgbA_4444 ; 
#define  PAM 142 
#define  PGM 141 
#define  PNG 140 
#define  PPM 139 
 int /*<<< orphan*/  FUNC9 (char const*,scalar_t__) ; 
#define  RAW_YUV 138 
#define  RGB 137 
#define  RGBA 136 
#define  RGBA_4444 135 
#define  RGB_565 134 
 int FUNC10 (TYPE_3__* const,int,char const*) ; 
 double FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
#define  TIFF 133 
 int /*<<< orphan*/ * VP8GetCPUInfo ; 
 scalar_t__ VP8_STATUS_OK ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__* const) ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
#define  YUV 132 
#define  YUVA 131 
#define  bgrA 130 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 char** kFormatType ; 
 int /*<<< orphan*/  FUNC19 (char*,int const,int const,int const) ; 
 int quiet ; 
#define  rgbA 129 
#define  rgbA_4444 128 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC20 (char const*,char*) ; 
 int verbose ; 

int FUNC21(int argc, const char* argv[]) {
  int ok = 0;
  const char* in_file = NULL;
  const char* out_file = NULL;

  WebPDecoderConfig config;
  WebPDecBuffer* const output_buffer = &config.output;
  WebPBitstreamFeatures* const bitstream = &config.input;
  WebPOutputFileFormat format = PNG;
  uint8_t* external_buffer = NULL;
  int use_external_memory = 0;
  const uint8_t* data = NULL;

  int incremental = 0;
  int c;

  FUNC7(argc, argv);

  if (!FUNC17(&config)) {
    FUNC18(stderr, "Library version mismatch!\n");
    FUNC4(-1);
  }

  for (c = 1; c < argc; ++c) {
    int parse_error = 0;
    if (!FUNC20(argv[c], "-h") || !FUNC20(argv[c], "-help")) {
      FUNC6();
      FUNC4(0);
    } else if (!FUNC20(argv[c], "-o") && c < argc - 1) {
      out_file = (const char*)FUNC5(argv, ++c);
    } else if (!FUNC20(argv[c], "-alpha")) {
      format = ALPHA_PLANE_ONLY;
    } else if (!FUNC20(argv[c], "-nofancy")) {
      config.options.no_fancy_upsampling = 1;
    } else if (!FUNC20(argv[c], "-nofilter")) {
      config.options.bypass_filtering = 1;
    } else if (!FUNC20(argv[c], "-pam")) {
      format = PAM;
    } else if (!FUNC20(argv[c], "-ppm")) {
      format = PPM;
    } else if (!FUNC20(argv[c], "-bmp")) {
      format = BMP;
    } else if (!FUNC20(argv[c], "-tiff")) {
      format = TIFF;
    } else if (!FUNC20(argv[c], "-quiet")) {
      quiet = 1;
    } else if (!FUNC20(argv[c], "-version")) {
      const int version = FUNC16();
      FUNC19("%d.%d.%d\n",
             (version >> 16) & 0xff, (version >> 8) & 0xff, version & 0xff);
      FUNC4(0);
    } else if (!FUNC20(argv[c], "-pgm")) {
      format = PGM;
    } else if (!FUNC20(argv[c], "-yuv")) {
      format = RAW_YUV;
    } else if (!FUNC20(argv[c], "-pixel_format") && c < argc - 1) {
      const char* const fmt = argv[++c];
      if      (!FUNC20(fmt, "RGB"))  format = RGB;
      else if (!FUNC20(fmt, "RGBA")) format = RGBA;
      else if (!FUNC20(fmt, "BGR"))  format = BGR;
      else if (!FUNC20(fmt, "BGRA")) format = BGRA;
      else if (!FUNC20(fmt, "ARGB")) format = ARGB;
      else if (!FUNC20(fmt, "RGBA_4444")) format = RGBA_4444;
      else if (!FUNC20(fmt, "RGB_565")) format = RGB_565;
      else if (!FUNC20(fmt, "rgbA")) format = rgbA;
      else if (!FUNC20(fmt, "bgrA")) format = bgrA;
      else if (!FUNC20(fmt, "Argb")) format = Argb;
      else if (!FUNC20(fmt, "rgbA_4444")) format = rgbA_4444;
      else if (!FUNC20(fmt, "YUV"))  format = YUV;
      else if (!FUNC20(fmt, "YUVA")) format = YUVA;
      else {
        FUNC18(stderr, "Can't parse pixel_format %s\n", fmt);
        parse_error = 1;
      }
    } else if (!FUNC20(argv[c], "-external_memory") && c < argc - 1) {
      use_external_memory = FUNC3(argv[++c], 0, &parse_error);
      parse_error |= (use_external_memory > 2 || use_external_memory < 0);
      if (parse_error) {
        FUNC18(stderr, "Can't parse 'external_memory' value %s\n", argv[c]);
      }
    } else if (!FUNC20(argv[c], "-mt")) {
      config.options.use_threads = 1;
    } else if (!FUNC20(argv[c], "-alpha_dither")) {
      config.options.alpha_dithering_strength = 100;
    } else if (!FUNC20(argv[c], "-nodither")) {
      config.options.dithering_strength = 0;
    } else if (!FUNC20(argv[c], "-dither") && c < argc - 1) {
      config.options.dithering_strength =
          FUNC3(argv[++c], 0, &parse_error);
    } else if (!FUNC20(argv[c], "-crop") && c < argc - 4) {
      config.options.use_cropping = 1;
      config.options.crop_left   = FUNC3(argv[++c], 0, &parse_error);
      config.options.crop_top    = FUNC3(argv[++c], 0, &parse_error);
      config.options.crop_width  = FUNC3(argv[++c], 0, &parse_error);
      config.options.crop_height = FUNC3(argv[++c], 0, &parse_error);
    } else if ((!FUNC20(argv[c], "-scale") || !FUNC20(argv[c], "-resize")) &&
               c < argc - 2) {  // '-scale' is left for compatibility
      config.options.use_scaling = 1;
      config.options.scaled_width  = FUNC3(argv[++c], 0, &parse_error);
      config.options.scaled_height = FUNC3(argv[++c], 0, &parse_error);
    } else if (!FUNC20(argv[c], "-flip")) {
      config.options.flip = 1;
    } else if (!FUNC20(argv[c], "-v")) {
      verbose = 1;
#ifndef WEBP_DLL
    } else if (!FUNC20(argv[c], "-noasm")) {
      VP8GetCPUInfo = NULL;
#endif
    } else if (!FUNC20(argv[c], "-incremental")) {
      incremental = 1;
    } else if (!FUNC20(argv[c], "--")) {
      if (c < argc - 1) in_file = (const char*)FUNC5(argv, ++c);
      break;
    } else if (argv[c][0] == '-') {
      FUNC18(stderr, "Unknown option '%s'\n", argv[c]);
      FUNC6();
      FUNC4(-1);
    } else {
      in_file = (const char*)FUNC5(argv, c);
    }

    if (parse_error) {
      FUNC6();
      FUNC4(-1);
    }
  }

  if (in_file == NULL) {
    FUNC18(stderr, "missing input file!!\n");
    FUNC6();
    FUNC4(-1);
  }

  if (quiet) verbose = 0;

  {
    VP8StatusCode status = VP8_STATUS_OK;
    size_t data_size = 0;
    if (!FUNC8(in_file, &data, &data_size, bitstream)) {
      FUNC4(-1);
    }

    switch (format) {
      case PNG:
#ifdef HAVE_WINCODEC_H
        output_buffer->colorspace = bitstream->has_alpha ? MODE_BGRA : MODE_BGR;
#else
        output_buffer->colorspace = bitstream->has_alpha ? MODE_RGBA : MODE_RGB;
#endif
        break;
      case PAM:
        output_buffer->colorspace = MODE_RGBA;
        break;
      case PPM:
        output_buffer->colorspace = MODE_RGB;  // drops alpha for PPM
        break;
      case BMP:
        output_buffer->colorspace = bitstream->has_alpha ? MODE_BGRA : MODE_BGR;
        break;
      case TIFF:
        output_buffer->colorspace = bitstream->has_alpha ? MODE_RGBA : MODE_RGB;
        break;
      case PGM:
      case RAW_YUV:
        output_buffer->colorspace = bitstream->has_alpha ? MODE_YUVA : MODE_YUV;
        break;
      case ALPHA_PLANE_ONLY:
        output_buffer->colorspace = MODE_YUVA;
        break;
      // forced modes:
      case RGB: output_buffer->colorspace = MODE_RGB; break;
      case RGBA: output_buffer->colorspace = MODE_RGBA; break;
      case BGR: output_buffer->colorspace = MODE_BGR; break;
      case BGRA: output_buffer->colorspace = MODE_BGRA; break;
      case ARGB: output_buffer->colorspace = MODE_ARGB; break;
      case RGBA_4444: output_buffer->colorspace = MODE_RGBA_4444; break;
      case RGB_565: output_buffer->colorspace = MODE_RGB_565; break;
      case rgbA: output_buffer->colorspace = MODE_rgbA; break;
      case bgrA: output_buffer->colorspace = MODE_bgrA; break;
      case Argb: output_buffer->colorspace = MODE_Argb; break;
      case rgbA_4444: output_buffer->colorspace = MODE_rgbA_4444; break;
      case YUV: output_buffer->colorspace = MODE_YUV; break;
      case YUVA: output_buffer->colorspace = MODE_YUVA; break;
      default: goto Exit;
    }

    if (use_external_memory > 0 && format >= RGB) {
      external_buffer = FUNC0(&config, format,
                                               use_external_memory);
      if (external_buffer == NULL) goto Exit;
    }

    {
      Stopwatch stop_watch;
      if (verbose) FUNC12(&stop_watch);

      if (incremental) {
        status = FUNC2(data, data_size, &config);
      } else {
        status = FUNC1(data, data_size, &config);
      }
      if (verbose) {
        const double decode_time = FUNC11(&stop_watch);
        FUNC18(stderr, "Time to decode picture: %.3fs\n", decode_time);
      }
    }

    ok = (status == VP8_STATUS_OK);
    if (!ok) {
      FUNC9(in_file, status);
      goto Exit;
    }
  }

  if (out_file != NULL) {
    if (!quiet) {
      FUNC13(stderr, "Decoded %s.", (const W_CHAR*)in_file);
      FUNC18(stderr, " Dimensions: %d x %d %s. Format: %s. Now saving...\n",
              output_buffer->width, output_buffer->height,
              bitstream->has_alpha ? " (with alpha)" : "",
              kFormatType[bitstream->format]);
    }
    ok = FUNC10(output_buffer, format, out_file);
  } else {
    if (!quiet) {
      FUNC13(stderr, "File %s can be decoded ", (const W_CHAR*)in_file);
      FUNC18(stderr, "(dimensions: %d x %d %s. Format: %s).\n",
              output_buffer->width, output_buffer->height,
              bitstream->has_alpha ? " (with alpha)" : "",
              kFormatType[bitstream->format]);
      FUNC18(stderr, "Nothing written; "
                      "use -o flag to save the result as e.g. PNG.\n");
    }
  }
 Exit:
  FUNC15(output_buffer);
  FUNC14((void*)external_buffer);
  FUNC14((void*)data);
  FUNC4(ok ? 0 : -1);
}