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
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static
void FUNC11(const char* cOutProf, const char* FileName)
{
    cmsHPROFILE hProfile;
    cmsUInt32Number n;
    char* Buffer;
    cmsUInt32Number dwFlags = 0;
    cmsContext BuffThread = FUNC0();


    if (cOutProf == NULL)
        hProfile = FUNC4(FUNC0(), NULL);
    else
        hProfile = FUNC6(FUNC0(), cOutProf, "r");

    n = FUNC5(FUNC0(), hProfile, 0, dwFlags, NULL, 0);
    if (n == 0) return;

    Buffer = (char*) FUNC2(BuffThread, n + 1);
    FUNC5(FUNC0(), hProfile, 0, dwFlags, Buffer, n);
    Buffer[n] = 0;

    if (FileName != NULL) {
        FILE* o = FUNC8(FileName, "wb");
        FUNC9(Buffer, n, 1, o);
        FUNC7(o);
    }

    FUNC1(BuffThread, Buffer);
    FUNC3(FUNC0(), hProfile);
    if (FileName != NULL)
        FUNC10(FileName);
}