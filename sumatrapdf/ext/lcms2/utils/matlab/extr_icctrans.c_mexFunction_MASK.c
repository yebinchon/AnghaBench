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
typedef  int /*<<< orphan*/  mxArray ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 void* BlackPointCompensation ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char**) ; 
 int /*<<< orphan*/  INTENT_ABSOLUTE_COLORIMETRIC ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  Intent ; 
 int /*<<< orphan*/  MatLabErrorHandler ; 
 int /*<<< orphan*/  FUNC5 (int,char**) ; 
 int /*<<< orphan*/  OutputChannels ; 
 int PrecalcMode ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ProofingIntent ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ Verbose ; 
 int /*<<< orphan*/ * cInProf ; 
 int /*<<< orphan*/ * cOutProf ; 
 int /*<<< orphan*/ * cProofing ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* lIsDeviceLink ; 
 void* lMultiProfileChain ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  nBytesDepth ; 
 scalar_t__ nProfiles ; 
 char* FUNC12 (char*,char*) ; 

void FUNC13(
				 int nlhs,              // Number of left hand side (output) arguments
				 mxArray *plhs[],       // Array of left hand side arguments
				 int nrhs,              // Number of right hand side (input) arguments
				 const mxArray *prhs[]  // Array of right hand side arguments
)
{

	char CommandLine[4096+1];
	char *pt, *argv[128];
	int argc = 1;


	if (nrhs != 2) {    

		FUNC6();              
		return;
	}


	if(nlhs > 1) {        
		FUNC3("Too many output arguments.");
	}


	// Setup error handler

	FUNC8(MatLabErrorHandler);

	// Defaults

	Verbose     = 0;
	cInProf     = NULL;
	cOutProf    = NULL;
	cProofing   = NULL;

	lMultiProfileChain = FALSE;
	nProfiles   = 0;

	Intent                  = INTENT_PERCEPTUAL;
	ProofingIntent          = INTENT_ABSOLUTE_COLORIMETRIC;
	PrecalcMode = 1;
	BlackPointCompensation  = FALSE;
	lIsDeviceLink           = FALSE;

	// Check types. Fist parameter is array of values, second parameter is command line

	if (!FUNC11(prhs[0]))
		FUNC3("Type mismatch on argument 1 -- Must be numeric");

	if (!FUNC10(prhs[1]))
		FUNC3("Type mismatch on argument 2 -- Must be string");




	// Unpack string to command line buffer

	if (FUNC9(prhs[1], CommandLine, 4096))
		FUNC3("Cannot unpack command string");

	// Separate to argv[] convention

	argv[0] = NULL;
	for (pt = FUNC12(CommandLine, " ");
		pt;
		pt = FUNC12(NULL, " ")) {

			argv[argc++] = pt;
	}



	// Parse arguments
	FUNC4(argc, argv);


	nBytesDepth = FUNC7(prhs[0]);

	FUNC5(argc, argv);


	plhs[0] = FUNC0(prhs[0], OutputChannels);


	FUNC1(prhs[0], plhs[0]);

	FUNC2();

	// Done!
}