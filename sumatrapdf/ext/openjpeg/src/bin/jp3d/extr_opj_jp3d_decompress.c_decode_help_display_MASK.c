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
    FUNC0(stdout, "HELP\n----\n\n");
    FUNC0(stdout, "- the -h option displays this help information on screen\n\n");

    FUNC0(stdout, "List of parameters for the JPEG 2000 encoder:\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, " Required arguments \n");
    FUNC0(stdout, " ---------------------------- \n");
    FUNC0(stdout, "  -i <compressed file> ( *.jp3d, *.j3d )\n");
    FUNC0(stdout,
            "    Currently accepts J3D-files. The file type is identified based on its suffix.\n");
    FUNC0(stdout, "  -o <decompressed file> ( *.pgx, *.bin )\n");
    FUNC0(stdout,
            "    Currently accepts PGX-files and BIN-files. Binary data is written to the file (not ascii). \n");
    FUNC0(stdout,
            "    If a PGX filename is given, there will be as many output files as slices; \n");
    FUNC0(stdout,
            "    an indice starting from 0 will then be appended to the output filename,\n");
    FUNC0(stdout, "    just before the \"pgx\" extension.\n");
    FUNC0(stdout, "  -m <characteristics file> ( *.img ) \n");
    FUNC0(stdout,
            "    Required only for BIN-files. Ascii data of volume characteristics is written. \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, " Optional  \n");
    FUNC0(stdout, " ---------------------------- \n");
    FUNC0(stdout, "  -h \n ");
    FUNC0(stdout, "    Display the help information\n");
    FUNC0(stdout, "  -r <RFx,RFy,RFz>\n");
    FUNC0(stdout,
            "    Set the number of highest resolution levels to be discarded on each dimension. \n");
    FUNC0(stdout,
            "    The volume resolution is effectively divided by 2 to the power of the\n");
    FUNC0(stdout,
            "    number of discarded levels. The reduce factor is limited by the\n");
    FUNC0(stdout,
            "    smallest total number of decomposition levels among tiles.\n");
    FUNC0(stdout, "  -l <number of quality layers to decode>\n");
    FUNC0(stdout,
            "    Set the maximum number of quality layers to decode. If there are\n");
    FUNC0(stdout,
            "    less quality layers than the specified number, all the quality layers\n");
    FUNC0(stdout, "    are decoded. \n");
    FUNC0(stdout, "  -O original-file \n");
    FUNC0(stdout,
            "    This option offers the possibility to compute some quality results  \n");
    FUNC0(stdout,
            "    for the decompressed volume, like the PSNR value achieved or the global SSIM value.  \n");
    FUNC0(stdout,
            "    Needs the original file in order to compare with the new one.\n");
    FUNC0(stdout,
            "    NOTE: Only valid when -r option is 0,0,0 (both original and decompressed volumes have same resolutions) \n");
    FUNC0(stdout,
            "    NOTE: If original file is .BIN file, the volume characteristics file shall be defined with the -m option. \n");
    FUNC0(stdout, "    (i.e. -O original-BIN-file -m original-IMG-file) \n");
    FUNC0(stdout, "  -BE \n");
    FUNC0(stdout,
            "    Define that the recovered volume data will be saved with big endian byte order.\n");
    FUNC0(stdout, "    By default, little endian byte order is used.\n");
    FUNC0(stdout, "\n");
}