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
 double LCMS_VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static
void FUNC4(int level)
{
     FUNC3(stderr, "little cms ICC profile applier for JPEG - v3.2 [LittleCMS %2.2f]\n\n", LCMS_VERSION / 1000.0);

     switch(level) {

     default:
     case 0:

     FUNC3(stderr, "usage: jpgicc [flags] input.jpg output.jpg\n");

     FUNC3(stderr, "\nflags:\n\n");
     FUNC3(stderr, "%cv - Verbose\n", SW);
     FUNC3(stderr, "%ci<profile> - Input profile (defaults to sRGB)\n", SW);
     FUNC3(stderr, "%co<profile> - Output profile (defaults to sRGB)\n", SW);

     FUNC1(NULL);


     FUNC3(stderr, "%cb - Black point compensation\n", SW);
     FUNC3(stderr, "%cd<0..1> - Observer adaptation state (abs.col. only)\n", SW);
     FUNC3(stderr, "%cn - Ignore embedded profile\n", SW);
     FUNC3(stderr, "%ce - Embed destination profile\n", SW);
     FUNC3(stderr, "%cs<new profile> - Save embedded profile as <new profile>\n", SW);

     FUNC3(stderr, "\n");

     FUNC3(stderr, "%cc<0,1,2,3> - Precalculates transform (0=Off, 1=Normal, 2=Hi-res, 3=LoRes) [defaults to 1]\n", SW);
     FUNC3(stderr, "\n");

     FUNC3(stderr, "%cp<profile> - Soft proof profile\n", SW);
     FUNC3(stderr, "%cm<0,1,2,3> - SoftProof intent\n", SW);
     FUNC3(stderr, "%cg - Marks out-of-gamut colors on softproof\n", SW);
     FUNC3(stderr, "%c!<r>,<g>,<b> - Out-of-gamut marker channel values\n", SW);

     FUNC3(stderr, "\n");
     FUNC3(stderr, "%cq<0..100> - Output JPEG quality\n", SW);

     FUNC3(stderr, "\n");
     FUNC3(stderr, "%ch<0,1,2,3> - More help\n", SW);
     break;

     case 1:

     FUNC3(stderr, "Examples:\n\n"
                     "To color correct from scanner to sRGB:\n"
                     "\tjpgicc %ciscanner.icm in.jpg out.jpg\n"
                     "To convert from monitor1 to monitor2:\n"
                     "\tjpgicc %cimon1.icm %comon2.icm in.jpg out.jpg\n"
                     "To make a CMYK separation:\n"
                     "\tjpgicc %coprinter.icm inrgb.jpg outcmyk.jpg\n"
                     "To recover sRGB from a CMYK separation:\n"
                     "\tjpgicc %ciprinter.icm incmyk.jpg outrgb.jpg\n"
                     "To convert from CIELab ITU/Fax JPEG to sRGB\n"
                     "\tjpgicc in.jpg out.jpg\n\n",
                     SW, SW, SW, SW, SW);
     break;

     case 2:
         FUNC0();
         break;

     case 3:

     FUNC3(stderr, "This program is intended to be a demo of the little cms\n"
                     "engine. Both lcms and this program are freeware. You can\n"
                     "obtain both in source code at http://www.littlecms.com\n"
                     "For suggestions, comments, bug reports etc. send mail to\n"
                     "marti@littlecms.com\n\n");
     break;
     }

     FUNC2(0);
}