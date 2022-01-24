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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(const char* name)
{
    FUNC0("\n");
    FUNC0("Syntax: %s image_file [list of commands]\n\n", name);
#if _WIN32
    printf("Commands: [Note: both '/' and '-' are accepted as command prefixes.]\n");
#else
    FUNC0("Commands:\n");
#endif
    // printf("    -format <sectors> [<filesystem>] [<custom header label>]\n"
    FUNC0("    -format <sectors> [<custom header label>]\n"
           "            Formats the disk image.\n");
    FUNC0("    -boot <sector file>\n"
           "            Writes a new boot sector.\n");
    FUNC0("    -add <src path> <dst path>\n"
           "            Copies an external file or directory into the image.\n");
    FUNC0("    -extract <src path> <dst path>\n"
           "            Copies a file or directory from the image into an external file\n"
           "            or directory.\n");
    FUNC0("    -move <src path> <new path>\n"
           "            Moves/renames a file or directory.\n");
    FUNC0("    -copy <src path> <new path>\n"
           "            Copies a file or directory.\n");
    FUNC0("    -mkdir <src path> <new path>\n"
           "            Creates a directory.\n");
    FUNC0("    -rmdir <src path> <new path>\n"
           "            Creates a directory.\n");
    FUNC0("    -list [<pattern>]\n"
           "            Lists files a directory (defaults to root).\n");
}