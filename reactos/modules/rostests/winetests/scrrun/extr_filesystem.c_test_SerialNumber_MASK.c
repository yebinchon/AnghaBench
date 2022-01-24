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
typedef  int LONG ;
typedef  int /*<<< orphan*/  IDrive ;
typedef  int /*<<< orphan*/ * HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/ * E_POINTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    IDrive *drive;
    LONG serial;
    HRESULT hr;
    BSTR name;

    drive = FUNC5();
    if (!drive) {
        FUNC7("No fixed drive found, skipping test.\n");
        return;
    }

    hr = FUNC2(drive, NULL);
    FUNC6(hr == E_POINTER, "got 0x%08x\n", *hr);

    serial = 0xdeadbeef;
    hr = FUNC2(drive, &serial);
    FUNC6(hr == S_OK, "got 0x%08x\n", *hr);
    FUNC6(serial != 0xdeadbeef, "got %x\n", serial);

    hr = FUNC1(drive, NULL);
    FUNC6(hr == E_POINTER, "got 0x%08x\n", *hr);

    name = NULL;
    hr = FUNC1(drive, &name);
    FUNC6(hr == S_OK, "got 0x%08x\n", *hr);
    FUNC6(name != NULL, "got %p\n", *name);
    FUNC4(name);

    hr = FUNC3(drive, NULL);
    FUNC6(hr == E_POINTER, "got 0x%08x\n", *hr);

    name = NULL;
    hr = FUNC3(drive, &name);
    FUNC6(hr == S_OK, "got 0x%08x\n", *hr);
    FUNC6(name != NULL, "got %p\n", *name);
    FUNC4(name);

    FUNC0(drive);
}