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
 void* BlackPointCompensation ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* Intent ; 
 int PrecalcMode ; 
 void* ProofingIntent ; 
 int SW ; 
 void* TRUE ; 
 void* Verbose ; 
 void* FUNC1 (void*) ; 
 void* cInProf ; 
 void* cOutProf ; 
 void* cProofing ; 
 void* lIsDeviceLink ; 
 void* lMultiProfileChain ; 
 int FUNC2 (int,char**,char*) ; 
 void* xoptarg ; 
 int xoptind ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static
void FUNC4(int argc, char *argv[])
{
	int  s;

	FUNC3();

	while ((s = FUNC2(argc, argv,"C:c:VvbBI:i:O:o:T:t:L:l:r:r:P:p:Mm")) != EOF) {


		switch (s){

		case 'b':
		case 'B': 
			BlackPointCompensation = TRUE;
			break;

		case 'c':
		case 'C':
			PrecalcMode = FUNC1(xoptarg);
			if (PrecalcMode < 0 || PrecalcMode > 3)
				FUNC0("Unknown precalc mode '%d'", PrecalcMode);
			break;

		case 'v':
		case 'V':
			Verbose = TRUE;
			break;

		case 'i':
		case 'I':
			if (lIsDeviceLink)
				FUNC0("Device-link already specified");
			cInProf = xoptarg;
			break;

		case 'o':
		case 'O':
			if (lIsDeviceLink)
				FUNC0("Device-link already specified"); 
			cOutProf = xoptarg;
			break;

		case 't':
		case 'T':
			Intent = FUNC1(xoptarg);
			// if (Intent > 3) Intent = 3;
			if (Intent < 0) Intent = 0;
			break;


		case 'l':
		case 'L': 
			cInProf = xoptarg;
			lIsDeviceLink = TRUE;
			break;

		case 'p':
		case 'P':
			cProofing = xoptarg;
			break;



		case 'r':
		case 'R':
			ProofingIntent = FUNC1(xoptarg);
			// if (ProofingIntent > 3) ProofingIntent = 3;
			if (ProofingIntent < 0) ProofingIntent = 0;
			break;


		case 'm':
		case 'M':
			lMultiProfileChain = TRUE;
			break;

		default:
			FUNC0("Unknown option.");
		}
	}

	// For multiprofile, need to specify -m

	if (xoptind < argc) {

		if (!lMultiProfileChain)
			FUNC0("Use %cm for multiprofile transforms", SW);
	}

}