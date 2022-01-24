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
typedef  int /*<<< orphan*/  desc ;
struct TYPE_3__ {int cbSizeofstruct; short picType; } ;
typedef  TYPE_1__ PICTDESC ;
typedef  int OLE_HANDLE ;
typedef  int /*<<< orphan*/  IPicture ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_PALETTE ; 
 int E_FAIL ; 
 int E_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IPicture ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,short*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 short PICTYPE_BITMAP ; 
 short PICTYPE_ENHMETAFILE ; 
 short PICTYPE_NONE ; 
 short PICTYPE_UNINITIALIZED ; 
 int S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC8 (short,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,short,...) ; 

__attribute__((used)) static void FUNC10(void)
{
    PICTDESC desc;
    OLE_HANDLE handle;
    IPicture *pict;
    HRESULT hr;
    short type, i;

if (0)
{
    /* crashes on native */
    FUNC7(NULL, &IID_IPicture, TRUE, NULL);
}

    desc.cbSizeofstruct = sizeof(desc);
    desc.picType = PICTYPE_UNINITIALIZED;
    pict = (void *)0xdeadbeef;
    hr = FUNC7(&desc, &IID_IPicture, TRUE, (void **)&pict);
    FUNC9(hr == E_UNEXPECTED, "got %#x\n", hr);
    FUNC9(pict == NULL, "got %p\n", pict);

    for (i = PICTYPE_UNINITIALIZED; i <= PICTYPE_ENHMETAFILE; i++)
    {
        hr = FUNC8(i, &pict);
        FUNC9(hr == S_OK, "%d: got %#x\n", i, hr);

        type = 0xdead;
        hr = FUNC4(pict, &type);
        FUNC9(hr == S_OK, "%d: got %#x\n", i, hr);
        FUNC9(type == i, "%d: got %d\n", i, type);

        handle = 0xdeadbeef;
        hr = FUNC3(pict, &handle);
        FUNC9(hr == S_OK, "%d: got %#x\n", i, hr);
        if (type == PICTYPE_UNINITIALIZED || type == PICTYPE_NONE)
            FUNC9(handle == 0, "%d: got %#x\n", i, handle);
        else
            FUNC9(handle != 0 && handle != 0xdeadbeef, "%d: got %#x\n", i, handle);

        handle = 0xdeadbeef;
        hr = FUNC5(pict, &handle);
        if (type == PICTYPE_BITMAP)
        {
            FUNC9(hr == S_OK, "%d: got %#x\n", i, hr);
            FUNC9(handle == 0xbeefdead, "%d: got %#x\n", i, handle);
        }
        else
        {
            FUNC9(hr == E_FAIL, "%d: got %#x\n", i, hr);
            FUNC9(handle == 0xdeadbeef || handle == 0 /* win64 */, "%d: got %#x\n", i, handle);
        }

        hr = FUNC6(pict, FUNC1(FUNC0(DEFAULT_PALETTE)));
        if (type == PICTYPE_BITMAP)
            FUNC9(hr == S_OK, "%d: got %#x\n", i, hr);
        else
            FUNC9(hr == E_FAIL, "%d: got %#x\n", i, hr);

        FUNC2(pict);
    }
}