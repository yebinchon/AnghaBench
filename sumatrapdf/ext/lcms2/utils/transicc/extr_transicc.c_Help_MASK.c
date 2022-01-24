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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static
void FUNC2(void)
{

    FUNC1(stderr, "usage: transicc [flags] [CGATS input] [CGATS output]\n\n");

    FUNC1(stderr, "flags:\n\n");
    FUNC1(stderr, "%cv<0..3> - Verbosity level\n", SW);

    FUNC1(stderr, "%ce[op] - Encoded representation of numbers\n", SW);
    FUNC1(stderr, "\t%cw - use 16 bits\n", SW);
    FUNC1(stderr, "\t%cx - Hexadecimal\n\n", SW);

    FUNC1(stderr, "%cs - bounded mode (clip negatives and highliths)\n", SW);
    FUNC1(stderr, "%cq - Quantize (round decimals)\n\n", SW);

    FUNC1(stderr, "%ci<profile> - Input profile (defaults to sRGB)\n", SW);
    FUNC1(stderr, "%co<profile> - Output profile (defaults to sRGB)\n", SW);
    FUNC1(stderr, "%cl<profile> - Transform by device-link profile\n", SW);

    FUNC1(stderr, "\nYou can use '*Lab', '*xyz' and others as built-in profiles\n\n");

    FUNC0(NULL);

    FUNC1(stderr, "\n");

    FUNC1(stderr, "%cd<0..1> - Observer adaptation state (abs.col. only)\n\n", SW);

    FUNC1(stderr, "%cb - Black point compensation\n", SW);

    FUNC1(stderr, "%cc<0,1,2,3> Precalculates transform (0=Off, 1=Normal, 2=Hi-res, 3=LoRes)\n\n", SW);
    FUNC1(stderr, "%cn - Terse output, intended for pipe usage\n", SW);

    FUNC1(stderr, "%cp<profile> - Soft proof profile\n", SW);
    FUNC1(stderr, "%cm<0,1,2,3> - Soft proof intent\n", SW);
    FUNC1(stderr, "%cg - Marks out-of-gamut colors on softproof\n\n", SW);



    FUNC1(stderr, "This program is intended to be a demo of the little cms\n"
        "engine. Both lcms and this program are freeware. You can\n"
        "obtain both in source code at http://www.littlecms.com\n"
        "For suggestions, comments, bug reports etc. send mail to\n"
        "info@littlecms.com\n\n");
}