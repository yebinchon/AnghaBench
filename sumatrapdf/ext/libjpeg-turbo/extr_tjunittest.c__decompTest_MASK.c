#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num; int denom; } ;
typedef  TYPE_1__ tjscalingfactor ;
typedef  int /*<<< orphan*/  tjhandle ;

/* Variables and functions */
 int TJFLAG_BOTTOMUP ; 
 int FUNC0 (int,TYPE_1__) ; 
 scalar_t__ YUVDECODE ; 
 scalar_t__ YUVENCODE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned char*,int,int,int,int,TYPE_1__,int) ; 
 scalar_t__ FUNC4 (unsigned char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 double FUNC6 () ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,unsigned long) ; 
 char** pixFormatStr ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 char** subNameLong ; 
 unsigned long FUNC10 (int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned char*,unsigned long,unsigned char*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned char*,unsigned long,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned char*,unsigned long,unsigned char*,int) ; 
 int* tjPixelSize ; 
 scalar_t__ yuv ; 

void FUNC14(tjhandle handle, unsigned char *jpegBuf,
	unsigned long jpegSize, int w, int h, int pf, char *basename, int subsamp,
	int flags, tjscalingfactor sf)
{
	unsigned char *dstBuf=NULL;
	int _hdrw=0, _hdrh=0, _hdrsubsamp=-1;  double t;
	int scaledWidth=FUNC0(w, sf);
	int scaledHeight=FUNC0(h, sf);
	unsigned long dstSize=0;

	if(yuv==YUVENCODE) return;

	if(yuv==YUVDECODE)
		FUNC9("JPEG -> YUV %s ... ", subNameLong[subsamp]);
	else
	{
		FUNC9("JPEG -> %s %s ", pixFormatStr[pf],
			(flags&TJFLAG_BOTTOMUP)? "Bottom-Up":"Top-Down ");
		if(sf.num!=1 || sf.denom!=1)
			FUNC9("%d/%d ... ", sf.num, sf.denom);
		else FUNC9("... ");
	}

	FUNC2(FUNC12(handle, jpegBuf, jpegSize, &_hdrw, &_hdrh,
		&_hdrsubsamp));
	if(_hdrw!=w || _hdrh!=h || _hdrsubsamp!=subsamp)
		FUNC1("Incorrect JPEG header");

	if(yuv==YUVDECODE) dstSize=FUNC10(w, h, subsamp);
	else dstSize=scaledWidth*scaledHeight*tjPixelSize[pf];
	if((dstBuf=(unsigned char *)FUNC7(dstSize))==NULL)
		FUNC1("Memory allocation failure");
	FUNC8(dstBuf, 0, dstSize);

	t=FUNC6();
	if(yuv==YUVDECODE)
	{
		FUNC2(FUNC13(handle, jpegBuf, jpegSize, dstBuf, flags));
	}
	else
	{
		FUNC2(FUNC11(handle, jpegBuf, jpegSize, dstBuf, scaledWidth, 0,
			scaledHeight, pf, flags));
	}
	t=FUNC6()-t;

	if(yuv==YUVDECODE)
	{
		if(FUNC4(dstBuf, w, h, subsamp)) FUNC9("Passed.");
		else FUNC9("FAILED!");
	}
	else
	{
		if(FUNC3(dstBuf, scaledWidth, scaledHeight, pf, subsamp, sf, flags))
			FUNC9("Passed.");
		else FUNC9("FAILED!");
	}
	FUNC9("  %f ms\n", t*1000.);

	bailout:
	if(dstBuf) FUNC5(dstBuf);
}