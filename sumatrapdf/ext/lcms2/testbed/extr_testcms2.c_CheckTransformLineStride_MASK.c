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
typedef  int /*<<< orphan*/  out ;
typedef  int cmsUInt8Number ;
typedef  int cmsUInt16Number ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  int /*<<< orphan*/  buf3 ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  TYPE_RGBA_16 ; 
 int /*<<< orphan*/  TYPE_RGBA_8 ; 
 int /*<<< orphan*/  TYPE_RGB_8 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsFLAGS_COPY_ALPHA ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC8 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
cmsInt32Number FUNC10(void)
{

       cmsHPROFILE pIn;
       cmsHPROFILE pOut;
       cmsHTRANSFORM t;

       // Our buffer is formed by 4 RGB8 lines, each line is 2 pixels wide plus a padding of one byte

       cmsUInt8Number buf1[]= { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0,
                                0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0,
                                0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0,
                                0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0, };

       // Our buffer2 is formed by 4 RGBA lines, each line is 2 pixels wide plus a padding of one byte

       cmsUInt8Number buf2[] = { 0xff, 0xff, 0xff, 1, 0xff, 0xff, 0xff, 1, 0,
                                 0xff, 0xff, 0xff, 1, 0xff, 0xff, 0xff, 1, 0,
                                 0xff, 0xff, 0xff, 1, 0xff, 0xff, 0xff, 1, 0,
                                 0xff, 0xff, 0xff, 1, 0xff, 0xff, 0xff, 1, 0};

       // Our buffer3 is formed by 4 RGBA16 lines, each line is 2 pixels wide plus a padding of two bytes

       cmsUInt16Number buf3[] = { 0xffff, 0xffff, 0xffff, 0x0101, 0xffff, 0xffff, 0xffff, 0x0101, 0,
                                  0xffff, 0xffff, 0xffff, 0x0101, 0xffff, 0xffff, 0xffff, 0x0101, 0,
                                  0xffff, 0xffff, 0xffff, 0x0101, 0xffff, 0xffff, 0xffff, 0x0101, 0,
                                  0xffff, 0xffff, 0xffff, 0x0101, 0xffff, 0xffff, 0xffff, 0x0101, 0 };

       cmsUInt8Number out[1024];


       FUNC9(out, 0, sizeof(out));
       pIn = FUNC4(FUNC0());
       pOut = FUNC7(FUNC0(),  "ibm-t61.icc", "r");
       if (pIn == NULL || pOut == NULL)
              return 0;

       t = FUNC3(FUNC0(), pIn, TYPE_RGB_8, pOut, TYPE_RGB_8, INTENT_PERCEPTUAL, cmsFLAGS_COPY_ALPHA);

       FUNC6(FUNC0(), t, buf1, out, 2, 4, 7, 7, 0, 0);
       FUNC5(FUNC0(), t);

       if (FUNC8(out, buf1, sizeof(buf1)) != 0) {
              FUNC1("Failed transform line stride on RGB8");
              FUNC2(FUNC0(), pIn);
              FUNC2(FUNC0(), pOut);
              return 0;
       }

       FUNC9(out, 0, sizeof(out));

       t = FUNC3(FUNC0(), pIn, TYPE_RGBA_8, pOut, TYPE_RGBA_8, INTENT_PERCEPTUAL, cmsFLAGS_COPY_ALPHA);

       FUNC6(FUNC0(), t, buf2, out, 2, 4, 9, 9, 0, 0);

       FUNC5(FUNC0(), t);


       if (FUNC8(out, buf2, sizeof(buf2)) != 0) {
              FUNC2(FUNC0(), pIn);
              FUNC2(FUNC0(), pOut);
              FUNC1("Failed transform line stride on RGBA8");
              return 0;
       }

       FUNC9(out, 0, sizeof(out));

       t = FUNC3(FUNC0(), pIn, TYPE_RGBA_16, pOut, TYPE_RGBA_16, INTENT_PERCEPTUAL, cmsFLAGS_COPY_ALPHA);

       FUNC6(FUNC0(), t, buf3, out, 2, 4, 18, 18, 0, 0);

       FUNC5(FUNC0(), t);

       if (FUNC8(out, buf3, sizeof(buf3)) != 0) {
              FUNC2(FUNC0(), pIn);
              FUNC2(FUNC0(), pOut);
              FUNC1("Failed transform line stride on RGBA16");
              return 0;
       }


       FUNC9(out, 0, sizeof(out));


       // From 8 to 16
       t = FUNC3(FUNC0(), pIn, TYPE_RGBA_8, pOut, TYPE_RGBA_16, INTENT_PERCEPTUAL, cmsFLAGS_COPY_ALPHA);

       FUNC6(FUNC0(), t, buf2, out, 2, 4, 9, 18, 0, 0);

       FUNC5(FUNC0(), t);

       if (FUNC8(out, buf3, sizeof(buf3)) != 0) {
              FUNC2(FUNC0(), pIn);
              FUNC2(FUNC0(), pOut);
              FUNC1("Failed transform line stride on RGBA16");
              return 0;
       }



       FUNC2(FUNC0(), pIn);
       FUNC2(FUNC0(), pOut);

       return 1;
}