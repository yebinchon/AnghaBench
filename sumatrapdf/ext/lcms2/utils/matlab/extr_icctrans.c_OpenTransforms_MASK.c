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
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* InputChannels ; 
 int /*<<< orphan*/  InputColorSpace ; 
 int /*<<< orphan*/  Intent ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*) ; 
 void* OutputChannels ; 
 int /*<<< orphan*/  OutputColorSpace ; 
 int /*<<< orphan*/  ProofingIntent ; 
 int /*<<< orphan*/  SW ; 
 scalar_t__ TRUE ; 
 char* cInProf ; 
 char* cOutProf ; 
 char* cProofing ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsFLAGS_SOFTPROOFING ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 scalar_t__ cmsSigLinkClass ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hColorTransform ; 
 int /*<<< orphan*/ * hInput ; 
 int /*<<< orphan*/ * hOutput ; 
 void** hProfiles ; 
 void* hProof ; 
 scalar_t__ lIsDeviceLink ; 
 scalar_t__ lMultiProfileChain ; 
 int /*<<< orphan*/  nBytesDepth ; 
 int nProfiles ; 
 int xoptind ; 

__attribute__((used)) static
void FUNC13(int argc, char *argv[])
{

	cmsUInt32Number dwIn, dwOut, dwFlags;


	if (lMultiProfileChain) {

		int i;
		cmsHTRANSFORM hTmp;


		nProfiles = argc - xoptind;
		for (i=0; i < nProfiles; i++) {

			hProfiles[i] = FUNC3(argv[i+xoptind]);
		}


		// Create a temporary devicelink 

		hTmp = FUNC5(hProfiles, nProfiles, 
			0, 0, Intent, FUNC1());

		hInput = FUNC12(hTmp, 4.2, 0);
		hOutput = NULL;
		FUNC7(hTmp);

		InputColorSpace  = FUNC8(hInput);
		OutputColorSpace = FUNC10(hInput);        
		lIsDeviceLink = TRUE;

	}
	else
		if (lIsDeviceLink) {

			hInput  = FUNC11(cInProf, "r");
			hOutput = NULL;
			InputColorSpace  = FUNC8(hInput);
			OutputColorSpace = FUNC10(hInput);


		}
		else {

			hInput  = FUNC3(cInProf);
			hOutput = FUNC3(cOutProf);    

			InputColorSpace   = FUNC8(hInput);
			OutputColorSpace  = FUNC8(hOutput);

			if (FUNC9(hInput) == cmsSigLinkClass ||
				FUNC9(hOutput) == cmsSigLinkClass)   
				FUNC0("Use %cl flag for devicelink profiles!\n", SW);

		}


		/*

		if (Verbose) {

		mexPrintf("From: %s\n", cmsTakeProductName(hInput));
		if (hOutput) mexPrintf("To  : %s\n\n", cmsTakeProductName(hOutput));

		}
		*/


		OutputChannels = FUNC4(OutputColorSpace);
		InputChannels  = FUNC4(InputColorSpace);


		dwIn  = FUNC2(InputColorSpace, nBytesDepth);
		dwOut = FUNC2(OutputColorSpace, nBytesDepth);


		dwFlags = FUNC1();

		if (cProofing != NULL) {

			hProof = FUNC3(cProofing);
			dwFlags |= cmsFLAGS_SOFTPROOFING;
		}




		hColorTransform = FUNC6(hInput, dwIn, 
			hOutput, dwOut, 
			hProof, Intent, 
			ProofingIntent, 
			dwFlags);

}