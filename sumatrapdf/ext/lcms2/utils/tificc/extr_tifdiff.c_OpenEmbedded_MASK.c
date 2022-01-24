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
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TIFFTAG_ICCPROFILE ; 
 int /*<<< orphan*/  TYPE_Lab_DBL ; 
 scalar_t__ Verbose ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hLab ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static
cmsUInt32Number FUNC6(TIFF* tiff, cmsHPROFILE* PtrProfile, cmsHTRANSFORM* PtrXform)
{

    cmsUInt32Number EmbedLen, dwFormat = 0;
    cmsUInt8Number* EmbedBuffer;

    *PtrProfile = NULL;
    *PtrXform   = NULL;

    if (FUNC2(tiff, TIFFTAG_ICCPROFILE, &EmbedLen, &EmbedBuffer)) {

              *PtrProfile = FUNC4(EmbedBuffer, EmbedLen);

              if (Verbose) {

				  FUNC5(stdout, "Embedded profile found:\n");
				  FUNC1(NULL, *PtrProfile);

              }

              dwFormat  = FUNC0(tiff);
              *PtrXform = FUNC3(*PtrProfile, dwFormat,
                                          hLab, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, 0);

      }

    return dwFormat;
}