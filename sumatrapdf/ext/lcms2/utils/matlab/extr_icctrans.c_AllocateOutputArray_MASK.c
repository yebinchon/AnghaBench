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
 int /*<<< orphan*/  FUNC0 (int*,int const*,int) ; 
#define  mxDOUBLE_CLASS 132 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int* FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
#define  mxINT16_CLASS 131 
#define  mxINT8_CLASS 130 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  mxUINT16_CLASS 129 
#define  mxUINT8_CLASS 128 

__attribute__((used)) static
mxArray* FUNC11(const mxArray* In, int OutputChannels)
{       

	mxArray*	Out			  = FUNC1(In);   // Make a "deep copy" of Input array 
	int         nDimensions   = FUNC5(In);    
	const int*	Dimensions    = FUNC4(In);
	int         InputChannels = Dimensions[nDimensions-1];


	// Modify pixel size only if needed

	if (InputChannels != OutputChannels) {


		int i, NewSize;
		int *ModifiedDimensions = (int*) FUNC7(nDimensions * sizeof(int));


		FUNC0(ModifiedDimensions, Dimensions, nDimensions * sizeof(int));
		ModifiedDimensions[nDimensions - 1] = OutputChannels;

		switch (FUNC3(In))  {

		case mxINT8_CLASS:   NewSize = sizeof(char); break;
		case mxUINT8_CLASS:  NewSize = sizeof(unsigned char); break;
		case mxINT16_CLASS:  NewSize = sizeof(short); break;
		case mxUINT16_CLASS: NewSize = sizeof(unsigned short); break;

		default:
		case mxDOUBLE_CLASS: NewSize = sizeof(double); break;
		}


		// NewSize = 1;
		for (i=0; i < nDimensions; i++)
			NewSize *= ModifiedDimensions[i];


		FUNC9(Out, ModifiedDimensions, nDimensions);
		FUNC2(ModifiedDimensions);

		FUNC10(Out, FUNC8(FUNC6(Out), NewSize));             

	}


	return Out;
}