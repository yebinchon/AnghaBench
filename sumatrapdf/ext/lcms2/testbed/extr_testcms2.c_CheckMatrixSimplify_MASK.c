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
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  TYPE_RGB_8 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,unsigned char*,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC7(void)
{

       cmsHPROFILE pIn;
       cmsHPROFILE pOut;
       cmsHTRANSFORM t;
       unsigned char buf[3] = { 127, 32, 64 };


       pIn = FUNC3(FUNC0());
       pOut = FUNC6(FUNC0(), "ibm-t61.icc", "r");
       if (pIn == NULL || pOut == NULL)
              return 0;

       t = FUNC2(FUNC0(), pIn, TYPE_RGB_8, pOut, TYPE_RGB_8, INTENT_PERCEPTUAL, 0);
       FUNC5(FUNC0(), t, buf, buf, 1, 1);
       FUNC4(FUNC0(), t);
       FUNC1(FUNC0(), pIn);
       FUNC1(FUNC0(), pOut);


       return buf[0] == 144 && buf[1] == 0 && buf[2] == 69;
}