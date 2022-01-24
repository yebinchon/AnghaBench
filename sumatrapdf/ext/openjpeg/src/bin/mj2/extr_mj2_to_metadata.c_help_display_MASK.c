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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC1()
{
    /*             "1234567890123456789012345678901234567890123456789012345678901234567890123456789" */
    FUNC0(stdout, "                Help for the 'mj2_to_metadata' Program\n");
    FUNC0(stdout, "                ======================================\n");
    FUNC0(stdout, "The -h option displays this information on screen.\n\n");

    FUNC0(stdout,
            "mj2_to_metadata generates an XML file from a Motion JPEG 2000 file.\n");
    FUNC0(stdout,
            "The generated XML shows the structural, but not (yet) curatorial,\n");
    FUNC0(stdout,
            "metadata from the movie header and from the JPEG 2000 image and tile\n");
    FUNC0(stdout,
            "headers of a sample frame.  Excluded: low-level packed-bits image data.\n\n");

    FUNC0(stdout, "By Default\n");
    FUNC0(stdout, "----------\n");
    FUNC0(stdout,
            "The metadata includes the jp2 image and tile headers of the first frame.\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "Metadata values are shown in 'raw' form (e.g., hexadecimal) as stored in the\n");
    FUNC0(stdout,
            "file, and, if apt, in a 'derived' form that is more quickly grasped.\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "Notes explaining the XML are embedded as terse comments.  These include\n");
    FUNC0(stdout, "   meaning of non-obvious tag abbreviations;\n");
    FUNC0(stdout, "   range and precision of valid values;\n");
    FUNC0(stdout, "   interpretations of values, such as enumerations; and\n");
    FUNC0(stdout, "   current implementation limitations.\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "The sample-size and chunk-offset tables, each with 1 row per frame, are not reported.\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "The file is self-contained and no verification (e.g., against a DTD) is requested.\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "Required Parameters (except with -h)\n");
    FUNC0(stdout, "------------------------------------\n");
    FUNC0(stdout,
            "[Caution: file strings that contain spaces should be wrapped with quotes.]\n");
    FUNC0(stdout,
            "-i input.mj2  : where 'input' is any source file name or path.\n");
    FUNC0(stdout,
            "                MJ2 files created with 'frames_to_mj2' are supported so far.\n");
    FUNC0(stdout,
            "                These are silent, single-track, 'MJ2 Simple Profile' videos.\n");
    FUNC0(stdout,
            "-o output.xml : where 'output' is any destination file name or path.\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "Optional Parameters\n");
    FUNC0(stdout, "-------------------\n");
    FUNC0(stdout, "-h            : Display this help information.\n");
    FUNC0(stdout, "-n            : Suppress all mj2_to_metadata notes.\n");
    FUNC0(stdout,
            "-t            : Include sample-size and chunk-offset tables.\n");
    FUNC0(stdout,
            "-f n          : where n > 0.  Include jp2 header info for frame n [default=1].\n");
    FUNC0(stdout, "-f 0          : No jp2 header info.\n");
    FUNC0(stdout,
            "-r            : Suppress all 'raw' data for which a 'derived' form exists.\n");
    FUNC0(stdout, "-d            : Suppress all 'derived' data.\n");
    FUNC0(stdout,
            "                (If both -r and -d given, -r will be ignored.)\n");
    FUNC0(stdout,
            "-v string     : Verify against the DTD file located by the string.\n");
    FUNC0(stdout,
            "                Prepend quoted 'string' with either SYSTEM or PUBLIC keyword.\n");
    FUNC0(stdout,
            "                Thus, for the distributed DTD placed in the same directory as\n");
    FUNC0(stdout,
            "                the output file: -v \"SYSTEM mj2_to_metadata.dtd\"\n");
    FUNC0(stdout,
            "                \"PUBLIC\" is used with an access protocol (e.g., http:) + URL.\n");
    /* More to come */
    FUNC0(stdout, "\n");
    /*             "1234567890123456789012345678901234567890123456789012345678901234567890123456789" */
}