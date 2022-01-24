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
typedef  int /*<<< orphan*/  images ;
typedef  int /*<<< orphan*/  W_CHAR ;
typedef  int /*<<< orphan*/  AnimatedImage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,double) ; 
 double FUNC2 (char const*,int*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (char const**,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char const**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/  const*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*) ; 

int FUNC16(int argc, const char* argv[]) {
  int return_code = -1;
  int dump_frames = 0;
  const char* dump_folder = NULL;
  double min_psnr = 0.;
  int got_input1 = 0;
  int got_input2 = 0;
  int premultiply = 1;
  int max_diff = 0;
  int i, c;
  const char* files[2] = { NULL, NULL };
  AnimatedImage images[2];

  FUNC8(argc, argv);

  for (c = 1; c < argc; ++c) {
    int parse_error = 0;
    if (!FUNC15(argv[c], "-dump_frames")) {
      if (c < argc - 1) {
        dump_frames = 1;
        dump_folder = (const char*)FUNC5(argv, ++c);
      } else {
        parse_error = 1;
      }
    } else if (!FUNC15(argv[c], "-min_psnr")) {
      if (c < argc - 1) {
        min_psnr = FUNC2(argv[++c], &parse_error);
      } else {
        parse_error = 1;
      }
    } else if (!FUNC15(argv[c], "-raw_comparison")) {
      premultiply = 0;
    } else if (!FUNC15(argv[c], "-max_diff")) {
      if (c < argc - 1) {
        max_diff = FUNC3(argv[++c], 0, &parse_error);
      } else {
        parse_error = 1;
      }
    } else if (!FUNC15(argv[c], "-h") || !FUNC15(argv[c], "-help")) {
      FUNC7();
      FUNC4(0);
    } else if (!FUNC15(argv[c], "-version")) {
      int dec_version, demux_version;
      FUNC6(&dec_version, &demux_version);
      FUNC14("WebP Decoder version: %d.%d.%d\nWebP Demux version: %d.%d.%d\n",
             (dec_version >> 16) & 0xff, (dec_version >> 8) & 0xff,
             (dec_version >> 0) & 0xff,
             (demux_version >> 16) & 0xff, (demux_version >> 8) & 0xff,
             (demux_version >> 0) & 0xff);
      FUNC4(0);
    } else {
      if (!got_input1) {
        files[0] = (const char*)FUNC5(argv, c);
        got_input1 = 1;
      } else if (!got_input2) {
        files[1] = (const char*)FUNC5(argv, c);
        got_input2 = 1;
      } else {
        parse_error = 1;
      }
    }
    if (parse_error) {
      FUNC7();
      FUNC4(-1);
    }
  }
  if (argc < 3) {
    FUNC7();
    FUNC4(-1);
  }


  if (!got_input2) {
    FUNC7();
    FUNC4(-1);
  }

  if (dump_frames) {
    FUNC12("Dumping decoded frames in: %s\n", (const W_CHAR*)dump_folder);
  }

  FUNC13(images, 0, sizeof(images));
  for (i = 0; i < 2; ++i) {
    FUNC12("Decoding file: %s\n", (const W_CHAR*)files[i]);
    if (!FUNC10(files[i], &images[i], dump_frames, dump_folder)) {
      FUNC11(stderr, "Error decoding file: %s\n Aborting.\n",
               (const W_CHAR*)files[i]);
      return_code = -2;
      goto End;
    } else {
      FUNC9(&images[i], max_diff);
    }
  }

  if (!FUNC1(&images[0], &images[1],
                                premultiply, min_psnr)) {
    FUNC11(stderr, "\nFiles %s and %s differ.\n", (const W_CHAR*)files[0],
             (const W_CHAR*)files[1]);
    return_code = -3;
  } else {
    FUNC12("\nFiles %s and %s are identical.\n", (const W_CHAR*)files[0],
            (const W_CHAR*)files[1]);
    return_code = 0;
  }
 End:
  FUNC0(&images[0]);
  FUNC0(&images[1]);
  FUNC4(return_code);
}