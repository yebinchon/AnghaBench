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
typedef  int /*<<< orphan*/  options ;
typedef  int /*<<< orphan*/ * PAVISTREAM ;
typedef  int /*<<< orphan*/ * LPAVICOMPRESSOPTIONS ;
typedef  scalar_t__ LONG ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  AVICOMPRESSOPTIONS ;

/* Variables and functions */
 scalar_t__ AVIERR_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int ICMF_CHOOSE_ALLCOMPRESSORS ; 
 int ICMF_CHOOSE_DATARATE ; 
 int ICMF_CHOOSE_KEYFRAME ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  winetest0 ; 
 int /*<<< orphan*/  winetest1 ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC10(void)
{
    AVICOMPRESSOPTIONS options[2];
    LPAVICOMPRESSOPTIONS poptions[2];
    PAVISTREAM streams[2] = {NULL, NULL};
    HRESULT hres;
    DWORD   res;
    LONG    lres;

    poptions[0] = &options[0];
    poptions[1] = &options[1];
    FUNC7(options, sizeof(options));

    FUNC6(0xdeadbeef);
    hres = FUNC3(&streams[0], NULL);
    FUNC8(hres == AVIERR_OK, "0: got 0x%x and %p (expected AVIERR_OK)\n", hres, streams[0]);

    FUNC6(0xdeadbeef);
    hres = FUNC3(&streams[1], NULL);
    FUNC8(hres == AVIERR_OK, "1: got 0x%x and %p (expected AVIERR_OK)\n", hres, streams[1]);

    FUNC6(0xdeadbeef);
    hres = FUNC4(streams[0], winetest0);
    FUNC8(hres == AVIERR_OK, "0: got 0x%x (expected AVIERR_OK)\n", hres);

    FUNC6(0xdeadbeef);
    hres = FUNC4(streams[1], winetest1);
    FUNC8(hres == AVIERR_OK, "1: got 0x%x (expected AVIERR_OK)\n", hres);

    if (winetest_interactive) {
        FUNC6(0xdeadbeef);
        res = FUNC0(0, ICMF_CHOOSE_DATARATE |ICMF_CHOOSE_KEYFRAME | ICMF_CHOOSE_ALLCOMPRESSORS,
                             2, streams, poptions);
        FUNC9("got %u with 0x%x/%u\n", res, FUNC5(), FUNC5());
    }

    FUNC6(0xdeadbeef);
    lres = FUNC1(2, poptions);
    FUNC8(lres == AVIERR_OK, "got 0x%x with 0x%x/%u\n", lres, FUNC5(), FUNC5());

    FUNC6(0xdeadbeef);
    res = FUNC2(streams[0]);
    FUNC8(res == 0, "0: got refcount %u (expected 0)\n", res);

    FUNC6(0xdeadbeef);
    res = FUNC2(streams[1]);
    FUNC8(res == 0, "1: got refcount %u (expected 0)\n", res);

}