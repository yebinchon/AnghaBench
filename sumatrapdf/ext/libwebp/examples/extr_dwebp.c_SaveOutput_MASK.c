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
typedef  int /*<<< orphan*/  WebPOutputFileFormat ;
typedef  int /*<<< orphan*/  WebPDecBuffer ;
typedef  int /*<<< orphan*/  W_CHAR ;
typedef  int /*<<< orphan*/  Stopwatch ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char const* const,char*) ; 
 int FUNC4 (int /*<<< orphan*/  const* const,int /*<<< orphan*/ ,char const* const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC6(const WebPDecBuffer* const buffer,
                      WebPOutputFileFormat format, const char* const out_file) {
  const int use_stdout = (out_file != NULL) && !FUNC3(out_file, "-");
  int ok = 1;
  Stopwatch stop_watch;

  if (verbose) {
    FUNC1(&stop_watch);
  }
  ok = FUNC4(buffer, format, out_file);

  if (ok) {
    if (!quiet) {
      if (use_stdout) {
        FUNC5(stderr, "Saved to stdout\n");
      } else {
        FUNC2(stderr, "Saved file %s\n", (const W_CHAR*)out_file);
      }
    }
    if (verbose) {
      const double write_time = FUNC0(&stop_watch);
      FUNC5(stderr, "Time to write output: %.3fs\n", write_time);
    }
  } else {
    if (use_stdout) {
      FUNC5(stderr, "Error writing to stdout !!\n");
    } else {
      FUNC2(stderr, "Error writing file %s !!\n", (const W_CHAR*)out_file);
    }
  }
  return ok;
}