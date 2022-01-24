#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hLab; int /*<<< orphan*/  hRGB; void* RGB2Lab; void* Lab2RGB; } ;
typedef  TYPE_1__* LPCARGO ;

/* Variables and functions */
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  TYPE_Lab_16 ; 
 int /*<<< orphan*/  TYPE_RGB_16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  cmsFLAGS_NOTPRECALC ; 

__attribute__((used)) static
void FUNC3(LPCARGO Cargo)
{
	

	Cargo -> hLab = FUNC0(NULL);
	Cargo -> hRGB = FUNC2();  
	
	Cargo->Lab2RGB = FUNC1(Cargo->hLab, TYPE_Lab_16, 
									    Cargo ->hRGB, TYPE_RGB_16,
										INTENT_RELATIVE_COLORIMETRIC, 
										cmsFLAGS_NOTPRECALC);

	Cargo->RGB2Lab = FUNC1(Cargo ->hRGB, TYPE_RGB_16, 
										Cargo ->hLab, TYPE_Lab_16, 
										INTENT_RELATIVE_COLORIMETRIC, 
										cmsFLAGS_NOTPRECALC);
}