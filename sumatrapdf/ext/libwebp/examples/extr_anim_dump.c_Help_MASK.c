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
  FUNC0("Usage: anim_dump [options] files...\n");
  FUNC0("\nOptions:\n");
  FUNC0("  -folder <string> .... dump folder (default: '.')\n");
  FUNC0("  -prefix <string> .... prefix for dumped frames "
                                  "(default: 'dump_')\n");
  FUNC0("  -tiff ............... save frames as TIFF\n");
  FUNC0("  -pam ................ save frames as PAM\n");
  FUNC0("  -h .................. this help\n");
  FUNC0("  -version ............ print version number and exit\n");
}