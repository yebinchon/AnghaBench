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
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsColorSpaceSignature ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsUInt32Number FUNC7(cmsColorSpaceSignature ColorSpace, int Bytes)
{
	int IsFloat = (Bytes == 0 || Bytes == 4) ? 1 : 0;
	int Channels = FUNC6(ColorSpace);
	return FUNC3(IsFloat)|FUNC2(FUNC5(ColorSpace))|FUNC0(Bytes)|FUNC1(Channels)|FUNC4(1);
}