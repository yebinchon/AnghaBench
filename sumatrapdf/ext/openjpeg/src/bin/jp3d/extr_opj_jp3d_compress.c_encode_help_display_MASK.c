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
    FUNC0(stdout, "List of parameters for the JPEG2000 Part 10 encoder:\n");
    FUNC0(stdout, "------------\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "Required Parameters (except with -h):\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "-i           : source file  (-i source.bin or source*.pgx) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "-m           : source characteristics file (-m imgfile.img) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "-o           : destination file (-o dest.jp3d) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "Optional Parameters:\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "-h           : display the help information \n ");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "-n           : number of resolutions (-n 3,3,3) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "-I           : use the irreversible transforms: ICT + DWT 9-7 (-I) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "-C           : coding algorithm (-C 2EB) [2EB, 3EB] \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "-r           : different compression ratios for successive layers (-r 20,10,5)\n ");
    FUNC0(stdout,
            "	         - The rate specified for each quality level is the desired compression factor.\n");
    FUNC0(stdout, "	         - Rate 1 means lossless compression\n");
    FUNC0(stdout,
            "               (options -r and -q cannot be used together)\n ");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "-q           : different psnr for successive layers (-q 30,40,50) \n ");
    FUNC0(stdout,
            "               (options -r and -q cannot be used together)\n ");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "-b           : size of code block (-b 32,32,32) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "-c           : size of precinct (-c 128,128,128) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "-t           : size of tile (-t 512,512,512) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "-p           : progression order (-p LRCP) [LRCP, RLCP, RPCL, PCRL, CPRL] \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "-s           : subsampling factor (-s 2,2,2) [-s X,Y,Z] \n");
    FUNC0(stdout, "			  - Remark: subsampling bigger than 2 can produce error\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "-SOP         : write SOP marker before each packet \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "-EPH         : write EPH marker after each header packet \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "-M           : code-block style (-M 0) [1=BYPASS(LAZY) 2=RESET 4=RESTART(TERMALL)\n");
    FUNC0(stdout, "                 8=VSC 16=PTERM 32=SEGSYM 64=3DCTXT] \n");
    FUNC0(stdout,
            "                 Indicate multiple modes by adding their values. \n");
    FUNC0(stdout,
            "                 ex: RESTART(4) + RESET(2) + SEGMARK(32) = -M 38\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "-D           : define DC offset (-D 12) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "-x           : create an index file *.Idx (-x index_name.Idx) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "-ROI         : c=%%d,U=%%d : quantization indices upshifted \n");
    FUNC0(stdout, "               for component c=%%d [%%d = 0,1,2]\n");
    FUNC0(stdout,
            "               with a value of U=%%d [0 <= %%d <= 37] (i.e. -ROI:c=0,U=25) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "-d           : offset of the origin of the volume (-d 150,300,100) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "-l           : offset of the origin of the tiles (-l 100,75,25) \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "DEFAULT CODING:\n");
    FUNC0(stdout, "------------\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, " * Lossless\n");
    FUNC0(stdout, " * 1 tile\n");
    FUNC0(stdout,
            " * Size of precinct : 2^15 x 2^15 x 2^15 (means 1 precinct)\n");
    FUNC0(stdout, " * Size of code-block : 64 x 64 x 64\n");
    FUNC0(stdout, " * Number of resolutions in x, y and z axis: 3\n");
    FUNC0(stdout, " * No SOP marker in the codestream\n");
    FUNC0(stdout, " * No EPH marker in the codestream\n");
    FUNC0(stdout, " * No sub-sampling in x, y or z direction\n");
    FUNC0(stdout, " * No mode switch activated\n");
    FUNC0(stdout, " * Progression order: LRCP\n");
    FUNC0(stdout, " * No index file\n");
    FUNC0(stdout, " * No ROI upshifted\n");
    FUNC0(stdout, " * No offset of the origin of the volume\n");
    FUNC0(stdout, " * No offset of the origin of the tiles\n");
    FUNC0(stdout, " * Reversible DWT 5-3 on each 2D slice\n");
    FUNC0(stdout, " * Coding algorithm: 2D-EBCOT \n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "REMARKS:\n");
    FUNC0(stdout, "---------\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "- The markers written to the main_header are : SOC SIZ COD QCD COM.\n");
    FUNC0(stdout,
            "- COD and QCD markers will never appear in the tile_header.\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "- You need enough disk space memory (twice the original) to encode \n");
    FUNC0(stdout,
            "the volume,i.e. for a 1.5 GB volume you need a minimum of 3GB of disk memory)\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout,
            "- When loading *.pgx files, a relative path to directory is needed for input argument \n");
    FUNC0(stdout,
            " followed by the common prefix of the slices and a '*' character representing sequential numeration.\n");
    FUNC0(stdout, "( -i relativepath/slices*.pgx )\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, " - The index file has the structure below:\n");
    FUNC0(stdout, "\n");
    FUNC0(stdout, "\t	Image_height Image_width Image_depth\n");
    FUNC0(stdout, "\t	Progression order: 0 (LRCP)\n");
    FUNC0(stdout, "\t	Tiles_size_X Tiles_size_Y Tiles_size_Z\n");
    FUNC0(stdout, "\t	Components_nb\n");
    FUNC0(stdout, "\t	Layers_nb\n");
    FUNC0(stdout, "\t	Decomposition_levels\n");
    FUNC0(stdout,
            "\t	[Precincts_size_X_res_Nr Precincts_size_Y_res_Nr Precincts_size_Z_res_Nr]\n\t  ...\n");
    FUNC0(stdout,
            "\t	[Precincts_size_X_res_0 Precincts_size_Y_res_0 Precincts_size_Z_res_0]\n");
    FUNC0(stdout, "\t	Main_header_end_position\n");
    FUNC0(stdout, "\t	Codestream_size\n");
    FUNC0(stdout,
            "\t	Tile_0 [start_pos end_header end_pos TotalDisto NumPix MaxMSE]\n");
    FUNC0(stdout, "\t	...\n");
    FUNC0(stdout,
            "\t	Tile_Nt [  ''         ''        ''        ''       ''    ''  ]\n");
    FUNC0(stdout,
            "\t  Tpacket_0 [Tile layer res. comp. prec. start_pos end_pos disto]\n");
    FUNC0(stdout, "\t  ...\n");
    FUNC0(stdout,
            "\t  Tpacket_Np [''   ''    ''   ''    ''       ''       ''     '' ]\n");
    FUNC0(stdout, "\t  MaxDisto\n");
    FUNC0(stdout, "\t  TotalDisto\n\n");
    FUNC0(stdout, "\n");

}