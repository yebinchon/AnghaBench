#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int use_argb; int width; int height; } ;
typedef  TYPE_1__ WebPPicture ;
struct TYPE_22__ {scalar_t__ size; int /*<<< orphan*/  bytes; } ;
typedef  TYPE_2__ WebPData ;
struct TYPE_23__ {int lossless; void* method; int /*<<< orphan*/  quality; } ;
typedef  TYPE_3__ WebPConfig ;
struct TYPE_24__ {int minimize_size; int allow_mixed; void* kmax; void* kmin; } ;
typedef  TYPE_4__ WebPAnimEncoderOptions ;
typedef  int /*<<< orphan*/  WebPAnimEncoder ;
typedef  int /*<<< orphan*/  W_CHAR ;
struct TYPE_25__ {int argc_; char** argv_; } ;
typedef  TYPE_5__ CommandLineArguments ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int*) ; 
 void* FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int,char const**,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (char const**,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char const**) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (char const*,TYPE_1__*) ; 
 int FUNC10 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,int,TYPE_3__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int FUNC20 () ; 
 int FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int FUNC24 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC26 (char*,int const,int const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC27 (char const*,char*) ; 

int FUNC28(int argc, const char* argv[]) {
  const char* output = NULL;
  WebPAnimEncoder* enc = NULL;
  int verbose = 0;
  int pic_num = 0;
  int duration = 100;
  int timestamp_ms = 0;
  int loop_count = 0;
  int width = 0, height = 0;
  WebPAnimEncoderOptions anim_config;
  WebPConfig config;
  WebPPicture pic;
  WebPData webp_data;
  int c;
  int have_input = 0;
  CommandLineArguments cmd_args;
  int ok;

  FUNC7(argc, argv);

  ok = FUNC3(argc - 1, argv + 1, &cmd_args);
  if (!ok) FUNC4(1);

  argc = cmd_args.argc_;
  argv = cmd_args.argv_;

  FUNC19(&webp_data);
  if (!FUNC16(&anim_config) ||
      !FUNC17(&config) ||
      !FUNC23(&pic)) {
    FUNC25(stderr, "Library version mismatch!\n");
    ok = 0;
    goto End;
  }

  // 1st pass of option parsing
  for (c = 0; ok && c < argc; ++c) {
    if (argv[c][0] == '-') {
      int parse_error = 0;
      if (!FUNC27(argv[c], "-o") && c + 1 < argc) {
        argv[c] = NULL;
        output = (const char*)FUNC5(argv, ++c);
      } else if (!FUNC27(argv[c], "-kmin") && c + 1 < argc) {
        argv[c] = NULL;
        anim_config.kmin = FUNC2(argv[++c], 0, &parse_error);
      } else if (!FUNC27(argv[c], "-kmax") && c + 1 < argc) {
        argv[c] = NULL;
        anim_config.kmax = FUNC2(argv[++c], 0, &parse_error);
      } else if (!FUNC27(argv[c], "-loop") && c + 1 < argc) {
        argv[c] = NULL;
        loop_count = FUNC2(argv[++c], 0, &parse_error);
        if (loop_count < 0) {
          FUNC25(stderr, "Invalid non-positive loop-count (%d)\n", loop_count);
          parse_error = 1;
        }
      } else if (!FUNC27(argv[c], "-min_size")) {
        anim_config.minimize_size = 1;
      } else if (!FUNC27(argv[c], "-mixed")) {
        anim_config.allow_mixed = 1;
        config.lossless = 0;
      } else if (!FUNC27(argv[c], "-v")) {
        verbose = 1;
      } else if (!FUNC27(argv[c], "-h") || !FUNC27(argv[c], "-help")) {
        FUNC6();
        goto End;
      } else if (!FUNC27(argv[c], "-version")) {
        const int enc_version = FUNC20();
        const int mux_version = FUNC21();
        FUNC26("WebP Encoder version: %d.%d.%d\nWebP Mux version: %d.%d.%d\n",
               (enc_version >> 16) & 0xff, (enc_version >> 8) & 0xff,
               enc_version & 0xff, (mux_version >> 16) & 0xff,
               (mux_version >> 8) & 0xff, mux_version & 0xff);
        goto End;
      } else {
        continue;
      }
      ok = !parse_error;
      if (!ok) goto End;
      argv[c] = NULL;   // mark option as 'parsed' during 1st pass
    } else {
      have_input |= 1;
    }
  }
  if (!have_input) {
    FUNC25(stderr, "No input file(s) for generating animation!\n");
    goto End;
  }

  // image-reading pass
  pic_num = 0;
  config.lossless = 1;
  for (c = 0; ok && c < argc; ++c) {
    if (argv[c] == NULL) continue;
    if (argv[c][0] == '-') {    // parse local options
      int parse_error = 0;
      if (!FUNC27(argv[c], "-lossy")) {
        if (!anim_config.allow_mixed) config.lossless = 0;
      } else if (!FUNC27(argv[c], "-lossless")) {
        if (!anim_config.allow_mixed) config.lossless = 1;
      } else if (!FUNC27(argv[c], "-q") && c + 1 < argc) {
        config.quality = FUNC1(argv[++c], &parse_error);
      } else if (!FUNC27(argv[c], "-m") && c + 1 < argc) {
        config.method = FUNC2(argv[++c], 0, &parse_error);
      } else if (!FUNC27(argv[c], "-d") && c + 1 < argc) {
        duration = FUNC2(argv[++c], 0, &parse_error);
        if (duration <= 0) {
          FUNC25(stderr, "Invalid negative duration (%d)\n", duration);
          parse_error = 1;
        }
      } else {
        parse_error = 1;   // shouldn't be here.
        FUNC25(stderr, "Unknown option [%s]\n", argv[c]);
      }
      ok = !parse_error;
      if (!ok) goto End;
      continue;
    }

    if (ok) {
      ok = FUNC24(&config);
      if (!ok) {
        FUNC25(stderr, "Invalid configuration.\n");
        goto End;
      }
    }

    // read next input image
    pic.use_argb = 1;
    ok = FUNC9((const char*)FUNC5(argv, c), &pic);
    if (!ok) goto End;

    if (enc == NULL) {
      width  = pic.width;
      height = pic.height;
      enc = FUNC15(width, height, &anim_config);
      ok = (enc != NULL);
      if (!ok) {
        FUNC25(stderr, "Could not create WebPAnimEncoder object.\n");
      }
    }

    if (ok) {
      ok = (width == pic.width && height == pic.height);
      if (!ok) {
        FUNC25(stderr, "Frame #%d dimension mismatched! "
                        "Got %d x %d. Was expecting %d x %d.\n",
                pic_num, pic.width, pic.height, width, height);
      }
    }

    if (ok) {
      ok = FUNC12(enc, &pic, timestamp_ms, &config);
      if (!ok) {
        FUNC25(stderr, "Error while adding frame #%d\n", pic_num);
      }
    }
    FUNC22(&pic);
    if (!ok) goto End;

    if (verbose) {
      FUNC11(stderr, "Added frame #%3d at time %4d (file: %s)\n",
               pic_num, timestamp_ms, FUNC5(argv, c));
    }
    timestamp_ms += duration;
    ++pic_num;
  }

  // add a last fake frame to signal the last duration
  ok = ok && FUNC12(enc, NULL, timestamp_ms, NULL);
  ok = ok && FUNC13(enc, &webp_data);
  if (!ok) {
    FUNC25(stderr, "Error during final animation assembly.\n");
  }

 End:
  // free resources
  FUNC14(enc);

  if (ok && loop_count > 0) {  // Re-mux to add loop count.
    ok = FUNC10(loop_count, &webp_data);
  }

  if (ok) {
    if (output != NULL) {
      ok = FUNC8(output, webp_data.bytes, webp_data.size);
      if (ok) FUNC11(stderr, "output file: %s     ", (const W_CHAR*)output);
    } else {
      FUNC25(stderr, "[no output file specified]   ");
    }
  }

  if (ok) {
    FUNC25(stderr, "[%d frames, %u bytes].\n",
            pic_num, (unsigned int)webp_data.size);
  }
  FUNC18(&webp_data);
  FUNC0(&cmd_args);
  FUNC4(ok ? 0 : 1);
}