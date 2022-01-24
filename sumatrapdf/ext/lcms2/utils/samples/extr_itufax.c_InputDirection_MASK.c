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
typedef  int /*<<< orphan*/  cmsCIELab ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  LPVOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC3(register WORD In[], register WORD Out[], register LPVOID Cargo)
{	   
    cmsCIELab Lab;

    FUNC2(&Lab, In);    
    FUNC1(&Lab, 85, -85, 125, -75);    // This function does the necessary gamut remapping  
    FUNC0(&Lab, Out);

	return TRUE;
}