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
 int SW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static
void FUNC3()
{
    FUNC2(stderr, "Little cms TIFF compare utility. v1.0\n\n");

    FUNC2(stderr, "usage: tiffdiff [flags] input.tif output.tif\n");

    FUNC2(stderr, "\nflags:\n\n");


    FUNC2(stderr, "%co<tiff>   - Output TIFF file\n", SW);
    FUNC2(stderr, "%cg<CGATS>  - Output results in CGATS file\n", SW);

    FUNC2(stderr, "\n");

    FUNC2(stderr, "%cv - Verbose (show warnings)\n", SW);
    FUNC2(stderr, "%ch - This help\n", SW);


    FUNC1(stderr);
    FUNC0(0);
}