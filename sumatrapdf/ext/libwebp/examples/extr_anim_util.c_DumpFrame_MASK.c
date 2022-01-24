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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  char W_CHAR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (char*,size_t,char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC10 (char const*,int,int,int /*<<< orphan*/ *) ; 
 int kNumChannels ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(const char filename[], const char dump_folder[],
                     uint32_t frame_num, const uint8_t rgba[],
                     int canvas_width, int canvas_height) {
  int ok = 0;
  size_t max_len;
  int y;
  const W_CHAR* base_name = NULL;
  W_CHAR* file_name = NULL;
  FILE* f = NULL;
  const char* row;

  if (dump_folder == NULL) dump_folder = (const char*)FUNC0(".");

  base_name = FUNC5(filename, '/');
  base_name = (base_name == NULL) ? (const W_CHAR*)filename : base_name + 1;
  max_len = FUNC4(dump_folder) + 1 + FUNC4(base_name)
          + FUNC11("_frame_") + FUNC11(".pam") + 8;
  file_name = (W_CHAR*)FUNC7(max_len * sizeof(*file_name));
  if (file_name == NULL) goto End;

  if (FUNC3(file_name, max_len, "%s/%s_frame_%d.pam",
                (const W_CHAR*)dump_folder, base_name, frame_num) < 0) {
    FUNC9(&stderr, "Error while generating file name\n");
    goto End;
  }

  f = FUNC1(file_name, "wb");
  if (f == NULL) {
    FUNC2(stderr, "Error opening file for writing: %s\n", file_name);
    ok = 0;
    goto End;
  }
  if (FUNC9(f, "P7\nWIDTH %d\nHEIGHT %d\n"
              "DEPTH 4\nMAXVAL 255\nTUPLTYPE RGB_ALPHA\nENDHDR\n",
              canvas_width, canvas_height) < 0) {
    FUNC2(stderr, "Write error for file %s\n", file_name);
    goto End;
  }
  row = (const char*)rgba;
  for (y = 0; y < canvas_height; ++y) {
    if (FUNC10(row, canvas_width * kNumChannels, 1, f) != 1) {
      FUNC2(stderr, "Error writing to file: %s\n", file_name);
      goto End;
    }
    row += canvas_width * kNumChannels;
  }
  ok = 1;
 End:
  if (f != NULL) FUNC8(f);
  FUNC6(file_name);
  return ok;
}