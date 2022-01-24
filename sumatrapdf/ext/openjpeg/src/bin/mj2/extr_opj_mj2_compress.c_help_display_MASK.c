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

__attribute__((used)) static void FUNC1()
{
    FUNC0(stdout, "HELP for frames_to_mj2\n----\n\n");
    FUNC0(stdout, "- the -h option displays this help information on screen\n\n");


    FUNC0(stdout, "List of parameters for the MJ2 encoder:\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "REMARKS:\n");
    FUNC0(stdout, "---------\n");
    FUNC0(stdout, "\n");
    FUNC0
    (stdout, "The markers written to the main_header are : SOC SIZ COD QCD COM.\n");
    FUNC0
    (stdout, "COD and QCD never appear in the tile_header.\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "By default:\n");
    FUNC0(stdout, "------------\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, " * Lossless\n");
    FUNC0(stdout, " * 1 tile\n");
    FUNC0(stdout, " * Size of precinct : 2^15 x 2^15 (means 1 precinct)\n");
    FUNC0(stdout, " * Size of code-block : 64 x 64\n");
    FUNC0(stdout, " * Number of resolutions: 6\n");
    FUNC0(stdout, " * No SOP marker in the codestream\n");
    FUNC0(stdout, " * No EPH marker in the codestream\n");
    FUNC0(stdout, " * No sub-sampling in x or y direction\n");
    FUNC0(stdout, " * No mode switch activated\n");
    FUNC0(stdout, " * Progression order: LRCP\n");
    FUNC0(stdout, " * No index file\n");
    FUNC0(stdout, " * No ROI upshifted\n");
    FUNC0(stdout, " * No offset of the origin of the image\n");
    FUNC0(stdout, " * No offset of the origin of the tiles\n");
    FUNC0(stdout, " * Reversible DWT 5-3\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "Parameters:\n");
    FUNC0(stdout, "------------\n");
    FUNC0(stdout, "\n");
    FUNC0
    (stdout, "Required Parameters (except with -h):\n");
    FUNC0
    (stdout, "-i : source file      (-i source.yuv) \n");
    FUNC0
    (stdout, "-o : destination file (-o dest.mj2) \n");
    FUNC0
    (stdout, "Optional Parameters:\n");
    FUNC0(stdout, "-h : display the help information \n");
    FUNC0(stdout,
            "-r : different compression ratios for successive layers (-r 20,10,5)\n");
    FUNC0(stdout,
            "     - The rate specified for each quality level is the desired \n");
    FUNC0(stdout, "       compression factor.\n");
    FUNC0(stdout, "       Example: -r 20,10,1 means quality 1: compress 20x, \n");
    FUNC0(stdout,
            "       quality 2: compress 10x and quality 3: compress lossless\n");
    FUNC0(stdout, "       (options -r and -q cannot be used together)\n");

    FUNC0(stdout, "-q : different psnr for successive layers (-q 30,40,50) \n");
    FUNC0(stdout, "        (options -r and -q cannot be used together)\n");

    FUNC0(stdout, "-n : number of resolutions (-n 3) \n");
    FUNC0(stdout, "-b : size of code block (-b 32,32) \n");
    FUNC0(stdout, "-c : size of precinct (-c 128,128) \n");
    FUNC0(stdout, "-t : size of tile (-t 512,512) \n");
    FUNC0
    (stdout, "-p : progression order (-p LRCP) [LRCP, RLCP, RPCL, PCRL, CPRL] \n");
    FUNC0
    (stdout, "-s : subsampling factor (-s 2,2) [-s X,Y] \n");
    FUNC0(stdout, "     Remark: subsampling bigger than 2 can produce error\n");
    FUNC0
    (stdout, "-S : write SOP marker before each packet \n");
    FUNC0
    (stdout, "-E : write EPH marker after each header packet \n");
    FUNC0
    (stdout, "-M : mode switch (-M 3) [1=BYPASS(LAZY) 2=RESET 4=RESTART(TERMALL)\n");
    FUNC0
    (stdout, "             8=VSC 16=ERTERM(SEGTERM) 32=SEGMARK(SEGSYM)] \n");
    FUNC0
    (stdout, "             Indicate multiple modes by adding their values. \n");
    FUNC0
    (stdout, "             Example: RESTART(4) + RESET(2) + SEGMARK(32) = -M 38\n");
    FUNC0
    (stdout, "-R : c=%%d,U=%%d : quantization indices upshifted \n");
    FUNC0
    (stdout, "             for component c=%%d [%%d = 0,1,2]\n");
    FUNC0
    (stdout, "             with a value of U=%%d [0 <= %%d <= 37] (i.e. -ROI:c=0,U=25) \n");
    FUNC0
    (stdout, "-d : offset of the origin of the image (-d 150,300) \n");
    FUNC0
    (stdout, "-T : offset of the origin of the tiles (-T 100,75) \n");
    FUNC0(stdout, "-I : use the irreversible DWT 9-7 (-I) \n");
    FUNC0(stdout, "-W : image width, height and the dx and dy subsampling \n");
    FUNC0(stdout, "        of the Cb and Cr components for YUV files \n");
    FUNC0(stdout,
            "        (default is '352,288,2,2' for CIF format's 352x288 and 4:2:0)\n");
    FUNC0(stdout, "-F : video frame rate (set to 25 by default)\n");
    FUNC0(stdout, "-D : depth, precision in bits [8 .. 16]; default:8\n");
    FUNC0(stdout, "-C : comment\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "IMPORTANT:\n");
    FUNC0(stdout, "-----------\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "The index file has the structure below:\n");
    FUNC0(stdout, "---------------------------------------\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "Image_height Image_width\n");
    FUNC0(stdout, "progression order\n");
    FUNC0(stdout, "Tiles_size_X Tiles_size_Y\n");
    FUNC0(stdout, "Components_nb\n");
    FUNC0(stdout, "Layers_nb\n");
    FUNC0(stdout, "decomposition_levels\n");
    FUNC0(stdout, "[Precincts_size_X_res_Nr Precincts_size_Y_res_Nr]...\n");
    FUNC0(stdout, "   [Precincts_size_X_res_0 Precincts_size_Y_res_0]\n");
    FUNC0(stdout, "Main_header_end_position\n");
    FUNC0(stdout, "Codestream_size\n");
    FUNC0(stdout,
            "Tile_0 start_pos end_Theader end_pos TotalDisto NumPix MaxMSE\n");
    FUNC0(stdout,
            "Tile_1   ''           ''        ''        ''       ''    ''\n");
    FUNC0(stdout, "...\n");
    FUNC0(stdout,
            "Tile_Nt   ''           ''        ''        ''       ''    ''\n");
    FUNC0(stdout,
            "Tpacket_0 Tile layer res. comp. prec. start_pos end_pos disto\n");
    FUNC0(stdout, "...\n");
    FUNC0(stdout,
            "Tpacket_Np ''   ''    ''   ''    ''       ''       ''     ''\n");

    FUNC0(stdout, "MaxDisto\n");

    FUNC0(stdout, "TotalDisto\n\n");
}