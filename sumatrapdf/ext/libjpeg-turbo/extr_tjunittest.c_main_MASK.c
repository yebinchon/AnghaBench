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
 int /*<<< orphan*/  TJSAMP_420 ; 
 int /*<<< orphan*/  TJSAMP_422 ; 
 int /*<<< orphan*/  TJSAMP_440 ; 
 int /*<<< orphan*/  TJSAMP_444 ; 
 int /*<<< orphan*/  TJSAMP_GRAY ; 
 int /*<<< orphan*/  YUVDECODE ; 
 int /*<<< orphan*/  YUVENCODE ; 
 int /*<<< orphan*/  _3byteFormats ; 
 int /*<<< orphan*/  _4byteFormats ; 
 int /*<<< orphan*/  _onlyGray ; 
 int /*<<< orphan*/  _onlyRGB ; 
 int alloc ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int exitStatus ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  yuv ; 

int FUNC8(int argc, char *argv[])
{
	int doyuv=0, i;
	#ifdef _WIN32
	srand((unsigned int)time(NULL));
	#endif
	if(argc>1)
	{
		for(i=1; i<argc; i++)
		{
			if(!FUNC4(argv[i], "-yuv")) doyuv=1;
			if(!FUNC4(argv[i], "-alloc")) alloc=1;
			if(!FUNC5(argv[i], "-h", 2) || !FUNC4(argv[i], "-?"))
				FUNC7(argv[0]);
		}
	}
	if(alloc) FUNC2("Testing automatic buffer allocation\n");
	if(doyuv) {yuv=YUVENCODE;  alloc=0;}
	FUNC1(35, 39, _3byteFormats, 2, TJSAMP_444, "test");
	FUNC1(39, 41, _4byteFormats, 4, TJSAMP_444, "test");
	FUNC1(41, 35, _3byteFormats, 2, TJSAMP_422, "test");
	FUNC1(35, 39, _4byteFormats, 4, TJSAMP_422, "test");
	FUNC1(39, 41, _3byteFormats, 2, TJSAMP_420, "test");
	FUNC1(41, 35, _4byteFormats, 4, TJSAMP_420, "test");
	FUNC1(35, 39, _3byteFormats, 2, TJSAMP_440, "test");
	FUNC1(39, 41, _4byteFormats, 4, TJSAMP_440, "test");
	FUNC1(35, 39, _onlyGray, 1, TJSAMP_GRAY, "test");
	FUNC1(39, 41, _3byteFormats, 2, TJSAMP_GRAY, "test");
	FUNC1(41, 35, _4byteFormats, 4, TJSAMP_GRAY, "test");
	FUNC0();
	if(doyuv)
	{
		FUNC2("\n--------------------\n\n");
		yuv=YUVDECODE;
		FUNC1(48, 48, _onlyRGB, 1, TJSAMP_444, "test_yuv0");
		FUNC1(35, 39, _onlyRGB, 1, TJSAMP_444, "test_yuv1");
		FUNC1(48, 48, _onlyRGB, 1, TJSAMP_422, "test_yuv0");
		FUNC1(39, 41, _onlyRGB, 1, TJSAMP_422, "test_yuv1");
		FUNC1(48, 48, _onlyRGB, 1, TJSAMP_420, "test_yuv0");
		FUNC1(41, 35, _onlyRGB, 1, TJSAMP_420, "test_yuv1");
		FUNC1(48, 48, _onlyRGB, 1, TJSAMP_440, "test_yuv0");
		FUNC1(35, 39, _onlyRGB, 1, TJSAMP_440, "test_yuv1");
		FUNC1(48, 48, _onlyRGB, 1, TJSAMP_GRAY, "test_yuv0");
		FUNC1(35, 39, _onlyRGB, 1, TJSAMP_GRAY, "test_yuv1");
		FUNC1(48, 48, _onlyGray, 1, TJSAMP_GRAY, "test_yuv0");
		FUNC1(39, 41, _onlyGray, 1, TJSAMP_GRAY, "test_yuv1");
	}

	return exitStatus;
}