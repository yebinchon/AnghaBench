#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  out_file ;
typedef  int /*<<< orphan*/  image ;
typedef  int /*<<< orphan*/  WebPOutputFileFormat ;
struct TYPE_13__ {int stride; int size; int /*<<< orphan*/  rgba; } ;
struct TYPE_14__ {TYPE_2__ RGBA; } ;
struct TYPE_15__ {int is_external_memory; int width; int height; TYPE_3__ u; int /*<<< orphan*/  colorspace; } ;
typedef  TYPE_4__ WebPDecBuffer ;
typedef  int /*<<< orphan*/  const W_CHAR ;
struct TYPE_16__ {size_t num_frames; int canvas_width; int canvas_height; TYPE_1__* frames; } ;
struct TYPE_12__ {int /*<<< orphan*/  rgba; } ;
typedef  TYPE_5__ AnimatedImage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (char const**,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char const**) ; 
 int /*<<< orphan*/  MODE_RGBA ; 
 int /*<<< orphan*/  PAM ; 
 int /*<<< orphan*/  PNG ; 
 int /*<<< orphan*/  FUNC6 (char const*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TIFF ; 
 int /*<<< orphan*/  const* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 

int FUNC18(int argc, const char* argv[]) {
  int error = 0;
  const W_CHAR* dump_folder = FUNC7(".");
  const W_CHAR* prefix = FUNC7("dump_");
  const W_CHAR* suffix = FUNC7("png");
  WebPOutputFileFormat format = PNG;
  int c;

  FUNC5(argc, argv);

  if (argc < 2) {
    FUNC4();
    FUNC1(-1);
  }

  for (c = 1; !error && c < argc; ++c) {
    if (!FUNC17(argv[c], "-folder")) {
      if (c + 1 == argc) {
        FUNC14(stderr, "missing argument after option '%s'\n", argv[c]);
        error = 1;
        break;
      }
      dump_folder = FUNC2(argv, ++c);
    } else if (!FUNC17(argv[c], "-prefix")) {
      if (c + 1 == argc) {
        FUNC14(stderr, "missing argument after option '%s'\n", argv[c]);
        error = 1;
        break;
      }
      prefix = FUNC2(argv, ++c);
    } else if (!FUNC17(argv[c], "-tiff")) {
      format = TIFF;
      suffix = FUNC7("tiff");
    } else if (!FUNC17(argv[c], "-pam")) {
      format = PAM;
      suffix = FUNC7("pam");
    } else if (!FUNC17(argv[c], "-h") || !FUNC17(argv[c], "-help")) {
      FUNC4();
      FUNC1(0);
    } else if (!FUNC17(argv[c], "-version")) {
      int dec_version, demux_version;
      FUNC3(&dec_version, &demux_version);
      FUNC16("WebP Decoder version: %d.%d.%d\nWebP Demux version: %d.%d.%d\n",
             (dec_version >> 16) & 0xff, (dec_version >> 8) & 0xff,
             (dec_version >> 0) & 0xff,
             (demux_version >> 16) & 0xff, (demux_version >> 8) & 0xff,
             (demux_version >> 0) & 0xff);
      FUNC1(0);
    } else {
      uint32_t i;
      AnimatedImage image;
      const W_CHAR* const file = FUNC2(argv, c);
      FUNC15(&image, 0, sizeof(image));
      FUNC9("Decoding file: %s as %s/%sxxxx.%s\n",
              file, dump_folder, prefix, suffix);
      if (!FUNC6((const char*)file, &image, 0, NULL)) {
        FUNC8(stderr, "Error decoding file: %s\n Aborting.\n", file);
        error = 1;
        break;
      }
      for (i = 0; !error && i < image.num_frames; ++i) {
        W_CHAR out_file[1024];
        WebPDecBuffer buffer;
        FUNC12(&buffer);
        buffer.colorspace = MODE_RGBA;
        buffer.is_external_memory = 1;
        buffer.width = image.canvas_width;
        buffer.height = image.canvas_height;
        buffer.u.RGBA.rgba = image.frames[i].rgba;
        buffer.u.RGBA.stride = buffer.width * sizeof(uint32_t);
        buffer.u.RGBA.size = buffer.u.RGBA.stride * buffer.height;
        FUNC10(out_file, sizeof(out_file), "%s/%s%.4d.%s",
                  dump_folder, prefix, i, suffix);
        if (!FUNC13(&buffer, format, (const char*)out_file)) {
          FUNC8(stderr, "Error while saving image '%s'\n", out_file);
          error = 1;
        }
        FUNC11(&buffer);
      }
      FUNC0(&image);
    }
  }
  FUNC1(error ? 1 : 0);
}