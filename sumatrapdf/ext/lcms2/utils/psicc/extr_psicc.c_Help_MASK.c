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
 int SW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static
void FUNC2(void)
{
	 FUNC1(stderr, "little CMS ICC PostScript generator - v2.1 [LittleCMS %2.2f]\n", LCMS_VERSION / 1000.0);

     FUNC1(stderr, "usage: psicc [flags] [<Output file>]\n\n");

     FUNC1(stderr, "flags:\n\n");

     FUNC1(stderr, "%ci<profile> - Input profile: Generates Color Space Array (CSA)\n", SW);
     FUNC1(stderr, "%co<profile> - Output profile: Generates Color Rendering Dictionary(CRD)\n", SW);

     FUNC1(stderr, "%ct<0,1,2,3> - Intent (0=Perceptual, 1=Colorimetric, 2=Saturation, 3=Absolute)\n", SW);

     FUNC1(stderr, "%cb - Black point compensation (CRD only)\n", SW);
     FUNC1(stderr, "%cu - Do NOT generate resource name on CRD\n", SW);
     FUNC1(stderr, "%cc<0,1,2> - Precision (0=LowRes, 1=Normal (default), 2=Hi-res) (CRD only)\n", SW);
     FUNC1(stderr, "%cn<gridpoints> - Alternate way to set precission, number of CLUT points (CRD only)\n", SW);

	 FUNC1(stderr, "\n");
	 FUNC1(stderr, "If no output file is specified, output goes to stdout.\n\n");
     FUNC1(stderr, "This program is intended to be a demo of the little cms\n"
                     "engine. Both lcms and this program are freeware. You can\n"
                     "obtain both in source code at http://www.littlecms.com\n"
                     "For suggestions, comments, bug reports etc. send mail to\n"
                     "info@littlecms.com\n\n");
     FUNC0(0);
}