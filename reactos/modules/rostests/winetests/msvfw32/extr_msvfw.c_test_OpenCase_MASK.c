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
typedef  int /*<<< orphan*/  info ;
struct TYPE_3__ {int dwSize; scalar_t__* szName; } ;
typedef  TYPE_1__ ICINFO ;
typedef  scalar_t__ HIC ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ ICERR_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*,int) ; 
 int /*<<< orphan*/  ICMODE_COMPRESS ; 
 int /*<<< orphan*/  ICMODE_DECOMPRESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 

__attribute__((used)) static void FUNC8(void)
{
    HIC h;
    ICINFO info;
    /* Check if default handler works */
    h = FUNC2(FUNC4('v','i','d','c'),0,ICMODE_DECOMPRESS);
    FUNC5(0!=h,"ICOpen(vidc.0) failed\n");
    if (h) {
        info.dwSize = sizeof(info);
        info.szName[0] = 0;
        FUNC1(h, &info, sizeof(info));
        FUNC6("The default decompressor is %s\n", FUNC7(info.szName));
        FUNC5(FUNC0(h)==ICERR_OK,"ICClose failed\n");
    }
    h = FUNC2(FUNC4('v','i','d','c'),0,ICMODE_COMPRESS);
    FUNC5(0!=h || FUNC3(h == 0),"ICOpen(vidc.0) failed\n");  /* Not present in Win8 */
    if (h) {
        info.dwSize = sizeof(info);
        info.szName[0] = 0;
        FUNC1(h, &info, sizeof(info));
        FUNC6("The default compressor is %s\n", FUNC7(info.szName));
        FUNC5(FUNC0(h)==ICERR_OK,"ICClose failed\n");
    }

    /* Open a compressor with combinations of lowercase
     * and uppercase compressortype and handler.
     */
    h = FUNC2(FUNC4('v','i','d','c'),FUNC4('m','s','v','c'),ICMODE_DECOMPRESS);
    FUNC5(0!=h,"ICOpen(vidc.msvc) failed\n");
    if (h) {
        FUNC5(FUNC0(h)==ICERR_OK,"ICClose failed\n");
    }
    h = FUNC2(FUNC4('v','i','d','c'),FUNC4('M','S','V','C'),ICMODE_DECOMPRESS);
    FUNC5(0!=h,"ICOpen(vidc.MSVC) failed\n");
    if (h) {
        FUNC5(FUNC0(h)==ICERR_OK,"ICClose failed\n");
    }
    h = FUNC2(FUNC4('V','I','D','C'),FUNC4('m','s','v','c'),ICMODE_DECOMPRESS);
    FUNC5(0!=h,"ICOpen(VIDC.msvc) failed\n");
    if (h) {
        FUNC5(FUNC0(h)==ICERR_OK,"ICClose failed\n");
    }
    h = FUNC2(FUNC4('V','I','D','C'),FUNC4('M','S','V','C'),ICMODE_DECOMPRESS);
    FUNC5(0!=h,"ICOpen(VIDC.MSVC) failed\n");
    if (h) {
        FUNC5(FUNC0(h)==ICERR_OK,"ICClose failed\n");
    }
    h = FUNC2(FUNC4('v','i','d','c'),FUNC4('m','S','v','C'),ICMODE_DECOMPRESS);
    FUNC5(0!=h,"ICOpen(vidc.mSvC) failed\n");
    if (h) {
        FUNC5(FUNC0(h)==ICERR_OK,"ICClose failed\n");
    }
    h = FUNC2(FUNC4('v','I','d','C'),FUNC4('m','s','v','c'),ICMODE_DECOMPRESS);
    FUNC5(0!=h,"ICOpen(vIdC.msvc) failed\n");
    if (h) {
        FUNC5(FUNC0(h)==ICERR_OK,"ICClose failed\n");
    }
}