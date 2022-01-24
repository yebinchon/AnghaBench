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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  W_CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const**,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char const**) ; 
 int FUNC3 (char const* const,int /*<<< orphan*/  const**,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

int FUNC10(int argc, const char* argv[]) {
  int c;
  int quiet = 0;
  int ok = 1;

  FUNC2(argc, argv);

  for (c = 1; ok && c < argc; ++c) {
    if (!FUNC9(argv[c], "-quiet")) {
      quiet = 1;
    } else if (!FUNC9(argv[c], "-help") || !FUNC9(argv[c], "-h")) {
      FUNC8("webp_quality [-h][-quiet] webp_files...\n");
      FUNC0(0);
    } else {
      const char* const filename = (const char*)FUNC1(argv, c);
      const uint8_t* data = NULL;
      size_t data_size = 0;
      int q;
      ok = FUNC3(filename, &data, &data_size);
      if (!ok) break;
      q = FUNC4(data, data_size);
      if (!quiet) FUNC5("[%s] ", (const W_CHAR*)filename);
      if (q < 0) {
        FUNC6(stderr, "Not a WebP file, or not a lossy WebP file.\n");
        ok = 0;
      } else {
        if (!quiet) {
          FUNC8("Estimated quality factor: %d\n", q);
        } else {
          FUNC8("%d\n", q);   // just print the number
        }
      }
      FUNC7((void*)data);
    }
  }
  FUNC0(ok ? 0 : 1);
}