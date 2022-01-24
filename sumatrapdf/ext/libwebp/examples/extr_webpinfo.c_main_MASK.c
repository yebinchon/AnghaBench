#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WebPInfoStatus ;
struct TYPE_4__ {int quiet_; int show_diagnosis_; int show_summary_; int parse_bitstream_; } ;
typedef  TYPE_1__ WebPInfo ;
typedef  int /*<<< orphan*/  WebPData ;
typedef  int /*<<< orphan*/  W_CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const**,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WEBP_INFO_INVALID_COMMAND ; 
 int /*<<< orphan*/  WEBP_INFO_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int const,int const,int const) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (char const*,char*) ; 

int FUNC14(int argc, const char* argv[]) {
  int c, quiet = 0, show_diag = 0, show_summary = 0;
  int parse_bitstream = 0;
  WebPInfoStatus webp_info_status = WEBP_INFO_OK;
  WebPInfo webp_info;

  FUNC5(argc, argv);

  if (argc == 1) {
    FUNC4();
    FUNC1(WEBP_INFO_OK);
  }

  // Parse command-line input.
  for (c = 1; c < argc; ++c) {
    if (!FUNC13(argv[c], "-h") || !FUNC13(argv[c], "-help")) {
      FUNC4();
      FUNC1(WEBP_INFO_OK);
    } else if (!FUNC13(argv[c], "-H") || !FUNC13(argv[c], "-longhelp")) {
      FUNC3();
      FUNC1(WEBP_INFO_OK);
    } else if (!FUNC13(argv[c], "-quiet")) {
      quiet = 1;
    } else if (!FUNC13(argv[c], "-diag")) {
      show_diag = 1;
    } else if (!FUNC13(argv[c], "-summary")) {
      show_summary = 1;
    } else if (!FUNC13(argv[c], "-bitstream_info")) {
      parse_bitstream = 1;
    } else if (!FUNC13(argv[c], "-version")) {
      const int version = FUNC10();
      FUNC12("WebP Decoder version: %d.%d.%d\n",
             (version >> 16) & 0xff, (version >> 8) & 0xff, version & 0xff);
      FUNC1(0);
    } else {  // Assume the remaining are all input files.
      break;
    }
  }

  if (c == argc) {
    FUNC4();
    FUNC1(WEBP_INFO_INVALID_COMMAND);
  }

  // Process input files one by one.
  for (; c < argc; ++c) {
    WebPData webp_data;
    const W_CHAR* in_file = NULL;
    FUNC11(&webp_info);
    webp_info.quiet_ = quiet;
    webp_info.show_diagnosis_ = show_diag;
    webp_info.show_summary_ = show_summary;
    webp_info.parse_bitstream_ = parse_bitstream;
    in_file = FUNC2(argv, c);
    if (in_file == NULL ||
        !FUNC6((const char*)in_file, &webp_data)) {
      webp_info_status = WEBP_INFO_INVALID_COMMAND;
      FUNC7(stderr, "Failed to open input file %s.\n", in_file);
      continue;
    }
    if (!webp_info.quiet_) FUNC8("File: %s\n", in_file);
    webp_info_status = FUNC0(&webp_info, &webp_data);
    FUNC9(&webp_data);
  }
  FUNC1(webp_info_status);
}