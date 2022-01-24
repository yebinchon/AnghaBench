#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {float width; float height; scalar_t__ use_argb; int argb_stride; scalar_t__ argb; } ;
typedef  TYPE_1__ WebPPicture ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int,int,float,float,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const**,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char const**) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC7 (char const*,TYPE_1__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int,int,float,float,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 size_t FUNC10 (int /*<<< orphan*/  const*,float,float,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_1__*,int,float*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned int,float,float,float,float,float,float) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 

int FUNC18(int argc, const char* argv[]) {
  WebPPicture pic1, pic2;
  size_t size1 = 0, size2 = 0;
  int ret = 1;
  float disto[5];
  int type = 0;
  int c;
  int help = 0;
  int keep_alpha = 0;
  int scale = 0;
  int use_gray = 0;
  const char* name1 = NULL;
  const char* name2 = NULL;
  const char* output = NULL;

  FUNC5(argc, argv);

  if (!FUNC14(&pic1) || !FUNC14(&pic2)) {
    FUNC15(stderr, "Can't init pictures\n");
    FUNC2(1);
  }

  for (c = 1; c < argc; ++c) {
    if (!FUNC17(argv[c], "-ssim")) {
      type = 1;
    } else if (!FUNC17(argv[c], "-psnr")) {
      type = 0;
    } else if (!FUNC17(argv[c], "-alpha")) {
      keep_alpha = 1;
    } else if (!FUNC17(argv[c], "-scale")) {
      scale = 1;
    } else if (!FUNC17(argv[c], "-gray")) {
      use_gray = 1;
    } else if (!FUNC17(argv[c], "-h")) {
      help = 1;
      ret = 0;
    } else if (!FUNC17(argv[c], "-o")) {
      if (++c == argc) {
        FUNC15(stderr, "missing file name after %s option.\n", argv[c - 1]);
        goto End;
      }
      output = (const char*)FUNC3(argv, c);
    } else if (name1 == NULL) {
      name1 = (const char*)FUNC3(argv, c);
    } else {
      name2 = (const char*)FUNC3(argv, c);
    }
  }
  if (help || name1 == NULL || name2 == NULL) {
    if (!help) {
      FUNC15(stderr, "Error: missing arguments.\n");
    }
    FUNC4();
    goto End;
  }
  size1 = FUNC7(name1, &pic1, 1);
  size2 = FUNC7(name2, &pic2, 1);
  if (size1 == 0 || size2 == 0) goto End;

  if (!keep_alpha) {
    FUNC9(&pic1, 0x00000000);
    FUNC9(&pic2, 0x00000000);
  }

  if (!FUNC12(&pic1, &pic2, type, disto)) {
    FUNC15(stderr, "Error while computing the distortion.\n");
    goto End;
  }
  FUNC16("%u %.2f    %.2f %.2f %.2f %.2f [ %.2f bpp ]\n",
         (unsigned int)size1,
         disto[4], disto[0], disto[1], disto[2], disto[3],
         8.f * size1 / pic1.width / pic1.height);

  if (output != NULL) {
    uint8_t* data = NULL;
    size_t data_size = 0;
    if (pic1.use_argb != pic2.use_argb) {
      FUNC15(stderr, "Pictures are not in the same argb format. "
                      "Can't save the difference map.\n");
      goto End;
    }
    if (pic1.use_argb) {
      int n;
      FUNC15(stderr, "max differences per channel: ");
      for (n = 0; n < 3; ++n) {    // skip the alpha channel
        const int range = (type == 1) ?
          FUNC8((uint8_t*)pic1.argb + n, pic1.argb_stride * 4,
                           (const uint8_t*)pic2.argb + n, pic2.argb_stride * 4,
                           4, pic1.width, pic1.height, scale) :
          FUNC1((uint8_t*)pic1.argb + n, pic1.argb_stride * 4,
                           (const uint8_t*)pic2.argb + n, pic2.argb_stride * 4,
                           4, pic1.width, pic1.height, scale);
        if (range < 0) FUNC15(stderr, "\nError computing diff map\n");
        FUNC15(stderr, "[%d]", range);
      }
      FUNC15(stderr, "\n");
      if (use_gray) FUNC0(&pic1);
    } else {
      FUNC15(stderr, "Can only compute the difference map in ARGB format.\n");
      goto End;
    }
#if !defined(WEBP_REDUCE_CSP)
    data_size = FUNC10((const uint8_t*)pic1.argb,
                                       pic1.width, pic1.height,
                                       pic1.argb_stride * 4,
                                       &data);
    if (data_size == 0) {
      FUNC15(stderr, "Error during lossless encoding.\n");
      goto End;
    }
    ret = FUNC6(output, data, data_size) ? 0 : 1;
    FUNC11(data);
    if (ret) goto End;
#else
    (void)data;
    (void)data_size;
    fprintf(stderr, "Cannot save the difference map. Please recompile "
                    "without the WEBP_REDUCE_CSP flag.\n");
#endif  // WEBP_REDUCE_CSP
  }
  ret = 0;

 End:
  FUNC13(&pic1);
  FUNC13(&pic2);
  FUNC2(ret);
}