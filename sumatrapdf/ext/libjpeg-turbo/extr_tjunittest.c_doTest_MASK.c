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
typedef  int /*<<< orphan*/ * tjhandle ;

/* Variables and functions */
 int TJFLAG_BOTTOMUP ; 
 int TJFLAG_FASTUPSAMPLE ; 
 int TJPF_RGBA ; 
 int TJPF_RGBX ; 
 int TJPF_XRGB ; 
 int TJSAMP_420 ; 
 int TJSAMP_422 ; 
 int TJSAMP_440 ; 
 scalar_t__ YUVDECODE ; 
 scalar_t__ YUVENCODE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  alloc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char**,unsigned long*,int,int,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned long,int,int,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 unsigned long FUNC6 (int,int,int) ; 
 unsigned long FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 scalar_t__ yuv ; 

void FUNC12(int w, int h, const int *formats, int nformats, int subsamp,
	char *basename)
{
	tjhandle chandle=NULL, dhandle=NULL;
	unsigned char *dstBuf=NULL;
	unsigned long size=0;  int pfi, pf, i;

	if(!alloc)
	{
		size=(yuv==YUVENCODE? FUNC7(w, h, subsamp)
			: FUNC6(w, h, subsamp));
		if((dstBuf=(unsigned char *)FUNC5(size))==NULL)
			FUNC0("Memory allocation failure.");
	}

	if((chandle=FUNC10())==NULL || (dhandle=FUNC11())==NULL)
		FUNC1();

	for(pfi=0; pfi<nformats; pfi++)
	{
		for(i=0; i<2; i++)
		{
			int flags=0;
			if(subsamp==TJSAMP_422 || subsamp==TJSAMP_420 || subsamp==TJSAMP_440)
				flags|=TJFLAG_FASTUPSAMPLE;
			if(i==1)
			{
				if(yuv==YUVDECODE) goto bailout;
				else flags|=TJFLAG_BOTTOMUP;
			}
			pf=formats[pfi];
			FUNC2(chandle, &dstBuf, &size, w, h, pf, basename, subsamp, 100,
				flags);
			FUNC3(dhandle, dstBuf, size, w, h, pf, basename, subsamp,
				flags);
			if(pf>=TJPF_RGBX && pf<=TJPF_XRGB)
			{
				FUNC4("\n");
				FUNC3(dhandle, dstBuf, size, w, h, pf+(TJPF_RGBA-TJPF_RGBX),
					basename, subsamp, flags);
			}
			FUNC4("\n");
		}
	}
	FUNC4("--------------------\n\n");

	bailout:
	if(chandle) FUNC8(chandle);
	if(dhandle) FUNC8(dhandle);

	if(dstBuf) FUNC9(dstBuf);
}