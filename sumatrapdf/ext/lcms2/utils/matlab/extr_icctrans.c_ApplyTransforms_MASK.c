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
typedef  int /*<<< orphan*/  const mxArray ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double*,double*,size_t) ; 
 int /*<<< orphan*/  hColorTransform ; 
 double* FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static
void FUNC3(const mxArray *In, mxArray *Out)
{   
	double *Input  = FUNC2(In); 
	double *Output = FUNC2(Out);    
	size_t nPixels = FUNC0(In);;

	FUNC1(hColorTransform, Input, Output, nPixels );

}