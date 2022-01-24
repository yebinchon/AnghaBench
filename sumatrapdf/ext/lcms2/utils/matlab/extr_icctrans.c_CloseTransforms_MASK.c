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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hColorTransform ; 
 int /*<<< orphan*/ * hInput ; 
 int /*<<< orphan*/ * hOutput ; 
 int /*<<< orphan*/ ** hProfiles ; 
 int /*<<< orphan*/ * hProof ; 
 int nProfiles ; 

__attribute__((used)) static
void FUNC2(void)
{
	int i;

	if (hColorTransform) FUNC1(hColorTransform);
	if (hInput) FUNC0(hInput);
	if (hOutput) FUNC0(hOutput);             
	if (hProof) FUNC0(hProof);

	for (i=0; i < nProfiles; i++)
		FUNC0(hProfiles[i]);

	hColorTransform = NULL; hInput = NULL; hOutput = NULL; hProof = NULL;
}