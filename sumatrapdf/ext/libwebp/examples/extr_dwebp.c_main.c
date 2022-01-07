
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int WebPOutputFileFormat ;
struct TYPE_12__ {int no_fancy_upsampling; int bypass_filtering; int use_threads; int alpha_dithering_strength; int use_cropping; int use_scaling; int flip; void* scaled_height; void* scaled_width; void* crop_height; void* crop_width; void* crop_top; void* crop_left; void* dithering_strength; } ;
struct TYPE_15__ {size_t format; scalar_t__ has_alpha; } ;
struct TYPE_14__ {int width; int height; void* colorspace; } ;
struct TYPE_13__ {TYPE_1__ options; TYPE_4__ input; TYPE_3__ output; } ;
typedef TYPE_2__ WebPDecoderConfig ;
typedef TYPE_3__ WebPDecBuffer ;
typedef TYPE_4__ WebPBitstreamFeatures ;
typedef int W_CHAR ;
typedef scalar_t__ VP8StatusCode ;
typedef int Stopwatch ;




 int * AllocateExternalBuffer (TYPE_2__*,int,int) ;




 scalar_t__ DecodeWebP (int const*,size_t,TYPE_2__*) ;
 scalar_t__ DecodeWebPIncremental (int const*,size_t,TYPE_2__*) ;
 void* ExUtilGetInt (char const*,int ,int*) ;
 int FREE_WARGV_AND_RETURN (int) ;
 scalar_t__ GET_WARGV (char const**,int) ;
 int Help () ;
 int INIT_WARGV (int,char const**) ;
 int LoadWebP (char const*,int const**,size_t*,TYPE_4__* const) ;
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




 int PrintWebPError (char const*,scalar_t__) ;





 int SaveOutput (TYPE_3__* const,int,char const*) ;
 double StopwatchReadAndReset (int *) ;
 int StopwatchReset (int *) ;

 int * VP8GetCPUInfo ;
 scalar_t__ VP8_STATUS_OK ;
 int WFPRINTF (int ,char*,int const*) ;
 int WebPFree (void*) ;
 int WebPFreeDecBuffer (TYPE_3__* const) ;
 int WebPGetDecoderVersion () ;
 int WebPInitDecoderConfig (TYPE_2__*) ;



 int fprintf (int ,char*,...) ;
 char** kFormatType ;
 int printf (char*,int const,int const,int const) ;
 int quiet ;


 int stderr ;
 int strcmp (char const*,char*) ;
 int verbose ;

int main(int argc, const char* argv[]) {
  int ok = 0;
  const char* in_file = ((void*)0);
  const char* out_file = ((void*)0);

  WebPDecoderConfig config;
  WebPDecBuffer* const output_buffer = &config.output;
  WebPBitstreamFeatures* const bitstream = &config.input;
  WebPOutputFileFormat format = 140;
  uint8_t* external_buffer = ((void*)0);
  int use_external_memory = 0;
  const uint8_t* data = ((void*)0);

  int incremental = 0;
  int c;

  INIT_WARGV(argc, argv);

  if (!WebPInitDecoderConfig(&config)) {
    fprintf(stderr, "Library version mismatch!\n");
    FREE_WARGV_AND_RETURN(-1);
  }

  for (c = 1; c < argc; ++c) {
    int parse_error = 0;
    if (!strcmp(argv[c], "-h") || !strcmp(argv[c], "-help")) {
      Help();
      FREE_WARGV_AND_RETURN(0);
    } else if (!strcmp(argv[c], "-o") && c < argc - 1) {
      out_file = (const char*)GET_WARGV(argv, ++c);
    } else if (!strcmp(argv[c], "-alpha")) {
      format = 148;
    } else if (!strcmp(argv[c], "-nofancy")) {
      config.options.no_fancy_upsampling = 1;
    } else if (!strcmp(argv[c], "-nofilter")) {
      config.options.bypass_filtering = 1;
    } else if (!strcmp(argv[c], "-pam")) {
      format = 142;
    } else if (!strcmp(argv[c], "-ppm")) {
      format = 139;
    } else if (!strcmp(argv[c], "-bmp")) {
      format = 143;
    } else if (!strcmp(argv[c], "-tiff")) {
      format = 133;
    } else if (!strcmp(argv[c], "-quiet")) {
      quiet = 1;
    } else if (!strcmp(argv[c], "-version")) {
      const int version = WebPGetDecoderVersion();
      printf("%d.%d.%d\n",
             (version >> 16) & 0xff, (version >> 8) & 0xff, version & 0xff);
      FREE_WARGV_AND_RETURN(0);
    } else if (!strcmp(argv[c], "-pgm")) {
      format = 141;
    } else if (!strcmp(argv[c], "-yuv")) {
      format = 138;
    } else if (!strcmp(argv[c], "-pixel_format") && c < argc - 1) {
      const char* const fmt = argv[++c];
      if (!strcmp(fmt, "RGB")) format = 137;
      else if (!strcmp(fmt, "RGBA")) format = 136;
      else if (!strcmp(fmt, "BGR")) format = 145;
      else if (!strcmp(fmt, "BGRA")) format = 144;
      else if (!strcmp(fmt, "ARGB")) format = 147;
      else if (!strcmp(fmt, "RGBA_4444")) format = 135;
      else if (!strcmp(fmt, "RGB_565")) format = 134;
      else if (!strcmp(fmt, "rgbA")) format = 129;
      else if (!strcmp(fmt, "bgrA")) format = 130;
      else if (!strcmp(fmt, "Argb")) format = 146;
      else if (!strcmp(fmt, "rgbA_4444")) format = 128;
      else if (!strcmp(fmt, "YUV")) format = 132;
      else if (!strcmp(fmt, "YUVA")) format = 131;
      else {
        fprintf(stderr, "Can't parse pixel_format %s\n", fmt);
        parse_error = 1;
      }
    } else if (!strcmp(argv[c], "-external_memory") && c < argc - 1) {
      use_external_memory = ExUtilGetInt(argv[++c], 0, &parse_error);
      parse_error |= (use_external_memory > 2 || use_external_memory < 0);
      if (parse_error) {
        fprintf(stderr, "Can't parse 'external_memory' value %s\n", argv[c]);
      }
    } else if (!strcmp(argv[c], "-mt")) {
      config.options.use_threads = 1;
    } else if (!strcmp(argv[c], "-alpha_dither")) {
      config.options.alpha_dithering_strength = 100;
    } else if (!strcmp(argv[c], "-nodither")) {
      config.options.dithering_strength = 0;
    } else if (!strcmp(argv[c], "-dither") && c < argc - 1) {
      config.options.dithering_strength =
          ExUtilGetInt(argv[++c], 0, &parse_error);
    } else if (!strcmp(argv[c], "-crop") && c < argc - 4) {
      config.options.use_cropping = 1;
      config.options.crop_left = ExUtilGetInt(argv[++c], 0, &parse_error);
      config.options.crop_top = ExUtilGetInt(argv[++c], 0, &parse_error);
      config.options.crop_width = ExUtilGetInt(argv[++c], 0, &parse_error);
      config.options.crop_height = ExUtilGetInt(argv[++c], 0, &parse_error);
    } else if ((!strcmp(argv[c], "-scale") || !strcmp(argv[c], "-resize")) &&
               c < argc - 2) {
      config.options.use_scaling = 1;
      config.options.scaled_width = ExUtilGetInt(argv[++c], 0, &parse_error);
      config.options.scaled_height = ExUtilGetInt(argv[++c], 0, &parse_error);
    } else if (!strcmp(argv[c], "-flip")) {
      config.options.flip = 1;
    } else if (!strcmp(argv[c], "-v")) {
      verbose = 1;

    } else if (!strcmp(argv[c], "-noasm")) {
      VP8GetCPUInfo = ((void*)0);

    } else if (!strcmp(argv[c], "-incremental")) {
      incremental = 1;
    } else if (!strcmp(argv[c], "--")) {
      if (c < argc - 1) in_file = (const char*)GET_WARGV(argv, ++c);
      break;
    } else if (argv[c][0] == '-') {
      fprintf(stderr, "Unknown option '%s'\n", argv[c]);
      Help();
      FREE_WARGV_AND_RETURN(-1);
    } else {
      in_file = (const char*)GET_WARGV(argv, c);
    }

    if (parse_error) {
      Help();
      FREE_WARGV_AND_RETURN(-1);
    }
  }

  if (in_file == ((void*)0)) {
    fprintf(stderr, "missing input file!!\n");
    Help();
    FREE_WARGV_AND_RETURN(-1);
  }

  if (quiet) verbose = 0;

  {
    VP8StatusCode status = VP8_STATUS_OK;
    size_t data_size = 0;
    if (!LoadWebP(in_file, &data, &data_size, bitstream)) {
      FREE_WARGV_AND_RETURN(-1);
    }

    switch (format) {
      case 140:



        output_buffer->colorspace = bitstream->has_alpha ? MODE_RGBA : MODE_RGB;

        break;
      case 142:
        output_buffer->colorspace = MODE_RGBA;
        break;
      case 139:
        output_buffer->colorspace = MODE_RGB;
        break;
      case 143:
        output_buffer->colorspace = bitstream->has_alpha ? MODE_BGRA : MODE_BGR;
        break;
      case 133:
        output_buffer->colorspace = bitstream->has_alpha ? MODE_RGBA : MODE_RGB;
        break;
      case 141:
      case 138:
        output_buffer->colorspace = bitstream->has_alpha ? MODE_YUVA : MODE_YUV;
        break;
      case 148:
        output_buffer->colorspace = MODE_YUVA;
        break;

      case 137: output_buffer->colorspace = MODE_RGB; break;
      case 136: output_buffer->colorspace = MODE_RGBA; break;
      case 145: output_buffer->colorspace = MODE_BGR; break;
      case 144: output_buffer->colorspace = MODE_BGRA; break;
      case 147: output_buffer->colorspace = MODE_ARGB; break;
      case 135: output_buffer->colorspace = MODE_RGBA_4444; break;
      case 134: output_buffer->colorspace = MODE_RGB_565; break;
      case 129: output_buffer->colorspace = MODE_rgbA; break;
      case 130: output_buffer->colorspace = MODE_bgrA; break;
      case 146: output_buffer->colorspace = MODE_Argb; break;
      case 128: output_buffer->colorspace = MODE_rgbA_4444; break;
      case 132: output_buffer->colorspace = MODE_YUV; break;
      case 131: output_buffer->colorspace = MODE_YUVA; break;
      default: goto Exit;
    }

    if (use_external_memory > 0 && format >= 137) {
      external_buffer = AllocateExternalBuffer(&config, format,
                                               use_external_memory);
      if (external_buffer == ((void*)0)) goto Exit;
    }

    {
      Stopwatch stop_watch;
      if (verbose) StopwatchReset(&stop_watch);

      if (incremental) {
        status = DecodeWebPIncremental(data, data_size, &config);
      } else {
        status = DecodeWebP(data, data_size, &config);
      }
      if (verbose) {
        const double decode_time = StopwatchReadAndReset(&stop_watch);
        fprintf(stderr, "Time to decode picture: %.3fs\n", decode_time);
      }
    }

    ok = (status == VP8_STATUS_OK);
    if (!ok) {
      PrintWebPError(in_file, status);
      goto Exit;
    }
  }

  if (out_file != ((void*)0)) {
    if (!quiet) {
      WFPRINTF(stderr, "Decoded %s.", (const W_CHAR*)in_file);
      fprintf(stderr, " Dimensions: %d x %d %s. Format: %s. Now saving...\n",
              output_buffer->width, output_buffer->height,
              bitstream->has_alpha ? " (with alpha)" : "",
              kFormatType[bitstream->format]);
    }
    ok = SaveOutput(output_buffer, format, out_file);
  } else {
    if (!quiet) {
      WFPRINTF(stderr, "File %s can be decoded ", (const W_CHAR*)in_file);
      fprintf(stderr, "(dimensions: %d x %d %s. Format: %s).\n",
              output_buffer->width, output_buffer->height,
              bitstream->has_alpha ? " (with alpha)" : "",
              kFormatType[bitstream->format]);
      fprintf(stderr, "Nothing written; "
                      "use -o flag to save the result as e.g. PNG.\n");
    }
  }
 Exit:
  WebPFreeDecBuffer(output_buffer);
  WebPFree((void*)external_buffer);
  WebPFree((void*)data);
  FREE_WARGV_AND_RETURN(ok ? 0 : -1);
}
