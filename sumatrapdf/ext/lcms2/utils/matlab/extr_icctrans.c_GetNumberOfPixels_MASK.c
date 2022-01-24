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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int* FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static
size_t FUNC3(const mxArray* In)
{
	int nDimensions  = FUNC2(In); 
	const int  *Dimensions   = FUNC1(In);

	switch (nDimensions) {

		case 1: return 1;                            // It is just a spot color
		case 2: return Dimensions[0];                // A scanline
		case 3: return Dimensions[0]*Dimensions[1];  // A image

		default:
			FUNC0("Unsupported array of %d dimensions", nDimensions);
			return 0;
	}
}