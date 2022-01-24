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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IEnumVARIANT ;
typedef  int /*<<< orphan*/  IDriveCollection ;
typedef  int /*<<< orphan*/  IDrive ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DriveTypeConst ;

/* Variables and functions */
 scalar_t__ Fixed ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IDrive ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fs3 ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__) ; 

__attribute__((used)) static IDrive *FUNC11(void)
{
    IDriveCollection *drives;
    IEnumVARIANT *iter;
    IDrive *drive;
    HRESULT hr;

    hr = FUNC7(fs3, &drives);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC2(drives, (IUnknown**)&iter);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);
    FUNC1(drives);

    while (1) {
        DriveTypeConst type;
        VARIANT var;

        hr = FUNC5(iter, 1, &var, NULL);
        if (hr == S_FALSE) {
            drive = NULL;
            break;
        }
        FUNC10(hr == S_OK, "got 0x%08x\n", hr);

        hr = FUNC0(FUNC8(&var), &IID_IDrive, (void**)&drive);
        FUNC10(hr == S_OK, "got 0x%08x\n", hr);
        FUNC9(&var);

        hr = FUNC4(drive, &type);
        FUNC10(hr == S_OK, "got 0x%08x\n", hr);
        if (type == Fixed)
            break;

        FUNC3(drive);
    }

    FUNC6(iter);
    return drive;
}