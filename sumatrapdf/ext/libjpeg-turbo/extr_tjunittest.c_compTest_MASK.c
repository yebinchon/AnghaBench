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
typedef  int /*<<< orphan*/  tjhandle ;

/* Variables and functions */
 int TJFLAG_BOTTOMUP ; 
 int TJFLAG_NOREALLOC ; 
 scalar_t__ YUVENCODE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alloc ; 
 scalar_t__ FUNC2 (unsigned char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 double FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int,int,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,unsigned long) ; 
 char** pixFormatStr ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,char*,char*,char*,...) ; 
 char** subName ; 
 char** subNameLong ; 
 unsigned long FUNC10 (int,int,int) ; 
 unsigned long FUNC11 (int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,int,int,unsigned char**,unsigned long*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,int,int,unsigned char*,int,int) ; 
 int* tjPixelSize ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,unsigned long,char*) ; 
 scalar_t__ yuv ; 

void FUNC15(tjhandle handle, unsigned char **dstBuf,
	unsigned long *dstSize, int w, int h, int pf, char *basename,
	int subsamp, int jpegQual, int flags)
{
	char tempStr[1024];  unsigned char *srcBuf=NULL;
	double t;

	if(yuv==YUVENCODE)
		FUNC8("%s %s -> %s YUV ... ", pixFormatStr[pf],
			(flags&TJFLAG_BOTTOMUP)? "Bottom-Up":"Top-Down ", subNameLong[subsamp]);
	else
		FUNC8("%s %s -> %s Q%d ... ", pixFormatStr[pf],
			(flags&TJFLAG_BOTTOMUP)? "Bottom-Up":"Top-Down ", subNameLong[subsamp],
			jpegQual);

	if((srcBuf=(unsigned char *)FUNC6(w*h*tjPixelSize[pf]))==NULL)
		FUNC0("Memory allocation failure");
	FUNC5(srcBuf, w, h, pf, flags);
	if(*dstBuf && *dstSize>0) FUNC7(*dstBuf, 0, *dstSize);

	t=FUNC4();
	if(yuv==YUVENCODE)
	{
		FUNC1(FUNC13(handle, srcBuf, w, 0, h, pf, *dstBuf, subsamp, flags));
	}
	else
	{
		if(!alloc)
		{
			flags|=TJFLAG_NOREALLOC;
			*dstSize=(yuv==YUVENCODE? FUNC11(w, h, subsamp)
				: FUNC10(w, h, subsamp));
		}
		FUNC1(FUNC12(handle, srcBuf, w, 0, h, pf, dstBuf, dstSize, subsamp,
			jpegQual, flags));
	}
	t=FUNC4()-t;

	if(yuv==YUVENCODE)
		FUNC9(tempStr, 1024, "%s_enc_%s_%s_%s.yuv", basename, pixFormatStr[pf],
			(flags&TJFLAG_BOTTOMUP)? "BU":"TD", subName[subsamp]);
	else
		FUNC9(tempStr, 1024, "%s_enc_%s_%s_%s_Q%d.jpg", basename,
			pixFormatStr[pf], (flags&TJFLAG_BOTTOMUP)? "BU":"TD", subName[subsamp],
			jpegQual);
	FUNC14(*dstBuf, *dstSize, tempStr);
	if(yuv==YUVENCODE)
	{
		if(FUNC2(*dstBuf, w, h, subsamp)) FUNC8("Passed.");
		else FUNC8("FAILED!");
	}
	else FUNC8("Done.");
	FUNC8("  %f ms\n  Result in %s\n", t*1000., tempStr);

	bailout:
	if(srcBuf) FUNC3(srcBuf);
}