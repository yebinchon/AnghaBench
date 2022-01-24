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
struct driveexists_test {char* drivespec; int drivetype; scalar_t__ expected_ret; } ;
typedef  char WCHAR ;
typedef  scalar_t__ VARIANT_BOOL ;
typedef  scalar_t__ HRESULT ;
typedef  char* BSTR ;

/* Variables and functions */
 scalar_t__ E_POINTER ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 scalar_t__ S_OK ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ VARIANT_FALSE ; 
 scalar_t__ VARIANT_TRUE ; 
 struct driveexists_test* driveexiststestdata ; 
 int /*<<< orphan*/  fs3 ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 char FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    const struct driveexists_test *ptr = driveexiststestdata;
    HRESULT hr;
    VARIANT_BOOL ret;
    BSTR drivespec;
    WCHAR root[] = {'?',':','\\',0};

    hr = FUNC1(fs3, NULL, NULL);
    FUNC4(hr == E_POINTER, "got 0x%08x\n", hr);

    ret = VARIANT_TRUE;
    hr = FUNC1(fs3, NULL, &ret);
    FUNC4(hr == S_OK, "got 0x%08x\n", hr);
    FUNC4(ret == VARIANT_FALSE, "got %x\n", ret);

    drivespec = FUNC2(root);
    hr = FUNC1(fs3, drivespec, NULL);
    FUNC4(hr == E_POINTER, "got 0x%08x\n", hr);
    FUNC3(drivespec);

    for (; *ptr->drivespec; ptr++) {
        drivespec = FUNC2(ptr->drivespec);
        if (ptr->drivetype != -1) {
            for (root[0] = 'A'; root[0] <= 'Z'; root[0]++)
                if (FUNC0(root) == ptr->drivetype)
                    break;
            if (root[0] > 'Z') {
                FUNC5("No drive with type 0x%x found, skipping test %s.\n",
                        ptr->drivetype, FUNC7(ptr->drivespec));
                FUNC3(drivespec);
                continue;
            }

            /* Test both upper and lower case drive letters. */
            drivespec[0] = root[0];
            ret = ptr->expected_ret == VARIANT_TRUE ? VARIANT_FALSE : VARIANT_TRUE;
            hr = FUNC1(fs3, drivespec, &ret);
            FUNC4(hr == S_OK, "got 0x%08x for drive spec %s (%s)\n",
                    hr, FUNC7(drivespec), FUNC7(ptr->drivespec));
            FUNC4(ret == ptr->expected_ret, "got %d, expected %d for drive spec %s (%s)\n",
                    ret, ptr->expected_ret, FUNC7(drivespec), FUNC7(ptr->drivespec));

            drivespec[0] = FUNC6(root[0]);
        }

        ret = ptr->expected_ret == VARIANT_TRUE ? VARIANT_FALSE : VARIANT_TRUE;
        hr = FUNC1(fs3, drivespec, &ret);
        FUNC4(hr == S_OK, "got 0x%08x for drive spec %s (%s)\n",
                hr, FUNC7(drivespec), FUNC7(ptr->drivespec));
        FUNC4(ret == ptr->expected_ret, "got %d, expected %d for drive spec %s (%s)\n",
                ret, ptr->expected_ret, FUNC7(drivespec), FUNC7(ptr->drivespec));

        FUNC3(drivespec);
    }
}