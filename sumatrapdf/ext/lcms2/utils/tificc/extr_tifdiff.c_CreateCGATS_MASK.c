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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  cmsHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CGATSout ; 
 int Channels ; 
 int /*<<< orphan*/ * ColorantStat ; 
 int /*<<< orphan*/  ColorimetricStat ; 
 int /*<<< orphan*/  EuclideanStat ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC15(const char* TiffName1, const char* TiffName2)
{
    cmsHANDLE hIT8 = FUNC2(0);
    time_t ltime;
    char Buffer[256];

    FUNC9(NULL, hIT8, "TIFFDIFF");


    FUNC11(Buffer, "Differences between %s and %s", TiffName1, TiffName2);

    FUNC5(NULL, hIT8, Buffer);

    FUNC8(NULL, hIT8, "ORIGINATOR", "TIFFDIFF");
    FUNC14( &ltime );
    FUNC12(Buffer, FUNC10(&ltime));
    Buffer[FUNC13(Buffer)-1] = 0;     // Remove the nasty "\n"

    FUNC8(NULL, hIT8, "CREATED", Buffer);

    FUNC5(NULL, hIT8, " ");

    FUNC7(NULL, hIT8, "NUMBER_OF_FIELDS", 6);


    FUNC6(NULL, hIT8, 0, "SAMPLE_ID");
    FUNC6(NULL, hIT8, 1, "PER100_EQUAL");
    FUNC6(NULL, hIT8, 2, "MEAN_DE");
    FUNC6(NULL, hIT8, 3, "STDEV_DE");
    FUNC6(NULL, hIT8, 4, "MIN_DE");
    FUNC6(NULL, hIT8, 5, "MAX_DE");


    switch (Channels) {

    case 1:
            FUNC7(NULL, hIT8, "NUMBER_OF_SETS", 3);
            FUNC0(hIT8, "GRAY_PLANE", &ColorantStat[0]);
            break;

    case 3:
            FUNC7(NULL, hIT8, "NUMBER_OF_SETS", 5);
            FUNC0(hIT8, "R_PLANE", &ColorantStat[0]);
            FUNC0(hIT8, "G_PLANE", &ColorantStat[1]);
            FUNC0(hIT8, "B_PLANE", &ColorantStat[2]);
            break;


    case 4:
            FUNC7(NULL, hIT8, "NUMBER_OF_SETS", 6);
            FUNC0(hIT8, "C_PLANE", &ColorantStat[0]);
            FUNC0(hIT8, "M_PLANE", &ColorantStat[1]);
            FUNC0(hIT8, "Y_PLANE", &ColorantStat[2]);
            FUNC0(hIT8, "K_PLANE", &ColorantStat[3]);
            break;

    default: FUNC1("Internal error: Bad ColorSpace");

    }

    FUNC0(hIT8, "EUCLIDEAN",    &EuclideanStat);
    FUNC0(hIT8, "COLORIMETRIC", &ColorimetricStat);

    FUNC4(NULL, hIT8, CGATSout);
    FUNC3(NULL, hIT8);
}