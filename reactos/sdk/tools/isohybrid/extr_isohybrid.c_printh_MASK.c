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
 char* FMT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(void)
{
#define FMT "%-20s %s\n"

    FUNC1();

    FUNC0("\n");
    FUNC0("Options:\n");
    FUNC0(FMT, "   -h <X>", "Number of geometry heads (default 64)");
    FUNC0(FMT, "   -s <X>", "Number of geometry sectors (default 32)");
    FUNC0(FMT, "   -e --entry", "Specify partition entry number (1-4)");
    FUNC0(FMT, "   -o --offset", "Specify partition offset (default 0)");
    FUNC0(FMT, "   -t --type", "Specify partition type (default 0x17)");
    FUNC0(FMT, "   -i --id", "Specify MBR ID (default random)");
#ifdef REACTOS_ISOHYBRID_EFI_MAC_SUPPORT
    printf(FMT, "   -u --uefi", "Build EFI bootable image");
    printf(FMT, "   -m --mac", "Add AFP table support");
#endif
    FUNC0(FMT, "   -b --mbr <PATH>", "Load MBR from PATH");

    FUNC0("\n");
    FUNC0(FMT, "   --forcehd0", "Assume we are loaded as disk ID 0");
    FUNC0(FMT, "   --ctrlhd0", "Assume disk ID 0 if the Ctrl key is pressed");
    FUNC0(FMT, "   --partok", "Allow booting from within a partition");

    FUNC0("\n");
    FUNC0(FMT, "   -? --help", "Display this help");
    FUNC0(FMT, "   -v --verbose", "Display verbose output");
    FUNC0(FMT, "   -V --version", "Display version information");

    FUNC0("\n");
    FUNC0("Report bugs to <pj.pandit@yahoo.co.in>\n");
}