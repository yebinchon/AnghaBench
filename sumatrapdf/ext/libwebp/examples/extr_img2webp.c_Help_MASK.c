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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void) {
  FUNC0("Usage:\n\n");
  FUNC0("  img2webp [file-level options] [image files...] "
         "[per-frame options...]\n");
  FUNC0("\n");

  FUNC0("File-level options (only used at the start of compression):\n");
  FUNC0(" -min_size ............ minimize size\n");
  FUNC0(" -loop <int> .......... loop count (default: 0, = infinite loop)\n");
  FUNC0(" -kmax <int> .......... maximum number of frame between key-frames\n"
         "                        (0=only keyframes)\n");
  FUNC0(" -kmin <int> .......... minimum number of frame between key-frames\n"
         "                        (0=disable key-frames altogether)\n");
  FUNC0(" -mixed ............... use mixed lossy/lossless automatic mode\n");
  FUNC0(" -v ................... verbose mode\n");
  FUNC0(" -h ................... this help\n");
  FUNC0(" -version ............. print version number and exit\n");
  FUNC0("\n");

  FUNC0("Per-frame options (only used for subsequent images input):\n");
  FUNC0(" -d <int> ............. frame duration in ms (default: 100)\n");
  FUNC0(" -lossless  ........... use lossless mode (default)\n");
  FUNC0(" -lossy ... ........... use lossy mode\n");
  FUNC0(" -q <float> ........... quality\n");
  FUNC0(" -m <int> ............. method to use\n");

  FUNC0("\n");
  FUNC0("example: img2webp -loop 2 in0.png -lossy in1.jpg\n"
         "                  -d 80 in2.tiff -o out.webp\n");
  FUNC0("\nNote: if a single file name is passed as the argument, the "
         "arguments will be\n");
  FUNC0("tokenized from this file. The file name must not start with "
         "the character '-'.\n");
}