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
 int JPWL_EXPECTED_COMPONENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC1(void)
{
    FUNC0(stdout, "HELP for j2k_to_image\n----\n\n");
    FUNC0(stdout, "- the -h option displays this help information on screen\n\n");

    /* UniPG>> */
    FUNC0(stdout, "List of parameters for the JPEG 2000 "
#ifdef USE_JPWL
            "+ JPWL "
#endif /* USE_JPWL */
            "decoder:\n");
    /* <<UniPG */
    FUNC0(stdout, "\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "  -ImgDir \n");
    FUNC0(stdout, "	Image file Directory path \n");
    FUNC0(stdout, "  -OutFor \n");
    FUNC0(stdout, "    REQUIRED only if -ImgDir is used\n");
    FUNC0(stdout, "	  Need to specify only format without filename <BMP>  \n");
    FUNC0(stdout,
            "    Currently accepts PGM, PPM, PNM, PGX, PNG, BMP, TIF, RAW and TGA formats\n");
    FUNC0(stdout, "  -i <compressed file>\n");
    FUNC0(stdout,
            "    REQUIRED only if an Input image directory not specified\n");
    FUNC0(stdout,
            "    Currently accepts J2K-files, JP2-files and JPT-files. The file type\n");
    FUNC0(stdout, "    is identified based on its suffix.\n");
    FUNC0(stdout, "  -o <decompressed file>\n");
    FUNC0(stdout, "    REQUIRED\n");
    FUNC0(stdout,
            "    Currently accepts PGM, PPM, PNM, PGX, PNG, BMP, TIF, RAW and TGA files\n");
    FUNC0(stdout,
            "    Binary data is written to the file (not ascii). If a PGX\n");
    FUNC0(stdout,
            "    filename is given, there will be as many output files as there are\n");
    FUNC0(stdout,
            "    components: an indice starting from 0 will then be appended to the\n");
    FUNC0(stdout,
            "    output filename, just before the \"pgx\" extension. If a PGM filename\n");
    FUNC0(stdout,
            "    is given and there are more than one component, only the first component\n");
    FUNC0(stdout, "    will be written to the file.\n");
    FUNC0(stdout, "  -r <reduce factor>\n");
    FUNC0(stdout,
            "    Set the number of highest resolution levels to be discarded. The\n");
    FUNC0(stdout,
            "    image resolution is effectively divided by 2 to the power of the\n");
    FUNC0(stdout,
            "    number of discarded levels. The reduce factor is limited by the\n");
    FUNC0(stdout,
            "    smallest total number of decomposition levels among tiles.\n");
    FUNC0(stdout, "  -l <number of quality layers to decode>\n");
    FUNC0(stdout,
            "    Set the maximum number of quality layers to decode. If there are\n");
    FUNC0(stdout,
            "    less quality layers than the specified number, all the quality layers\n");
    FUNC0(stdout, "    are decoded.\n");
    FUNC0(stdout, "  -x  \n");
    FUNC0(stdout, "    Create an index file *.Idx (-x index_name.Idx) \n");
    FUNC0(stdout, "\n");
    /* UniPG>> */
#ifdef USE_JPWL
    fprintf(stdout, "  -W <options>\n");
    fprintf(stdout,
            "    Activates the JPWL correction capability, if the codestream complies.\n");
    fprintf(stdout,
            "    Options can be a comma separated list of <param=val> tokens:\n");
    fprintf(stdout, "    c, c=numcomps\n");
    fprintf(stdout,
            "       numcomps is the number of expected components in the codestream\n");
    fprintf(stdout, "       (search of first EPB rely upon this, default is %d)\n",
            JPWL_EXPECTED_COMPONENTS);
#endif /* USE_JPWL */
    /* <<UniPG */
    FUNC0(stdout, "\n");
}