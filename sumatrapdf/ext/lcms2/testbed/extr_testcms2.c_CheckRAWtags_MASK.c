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
typedef  int /*<<< orphan*/  cmsTagSignature ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static
cmsInt32Number FUNC4(cmsInt32Number Pass,  cmsHPROFILE hProfile)
{
    char Buffer[7];

    switch (Pass) {

        case 1:
            return FUNC2(FUNC0(), hProfile, (cmsTagSignature) 0x31323334, "data123", 7);

        case 2:
            if (!FUNC1(FUNC0(), hProfile, (cmsTagSignature) 0x31323334, Buffer, 7)) return 0;

            if (FUNC3(Buffer, "data123", 7) != 0) return 0;
            return 1;

        default:
            return 0;
    }
}