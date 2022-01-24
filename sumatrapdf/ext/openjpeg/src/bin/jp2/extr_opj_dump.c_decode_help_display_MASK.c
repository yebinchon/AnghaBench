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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(void)
{
    FUNC0(stdout, "\nThis is the opj_dump utility from the OpenJPEG project.\n"
            "It dumps JPEG 2000 codestream info to stdout or a given file.\n"
            "It has been compiled against openjp2 library v%s.\n\n", FUNC1());

    FUNC0(stdout, "Parameters:\n");
    FUNC0(stdout, "-----------\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "  -ImgDir <directory>\n");
    FUNC0(stdout, "	Image file Directory path \n");
    FUNC0(stdout, "  -i <compressed file>\n");
    FUNC0(stdout,
            "    REQUIRED only if an Input image directory not specified\n");
    FUNC0(stdout,
            "    Currently accepts J2K-files, JP2-files and JPT-files. The file type\n");
    FUNC0(stdout, "    is identified based on its suffix.\n");
    FUNC0(stdout, "  -o <output file>\n");
    FUNC0(stdout, "    OPTIONAL\n");
    FUNC0(stdout, "    Output file where file info will be dump.\n");
    FUNC0(stdout, "    By default it will be in the stdout.\n");
    FUNC0(stdout, "  -v "); /* FIXME WIP_MSD */
    FUNC0(stdout, "    OPTIONAL\n");
    FUNC0(stdout, "    Enable informative messages\n");
    FUNC0(stdout, "    By default verbose mode is off.\n");
    FUNC0(stdout, "\n");
}