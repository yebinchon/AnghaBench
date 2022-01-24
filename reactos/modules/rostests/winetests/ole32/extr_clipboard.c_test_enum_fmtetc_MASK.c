#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cfFormat; scalar_t__ dwAspect; scalar_t__ lindex; scalar_t__ tymed; int /*<<< orphan*/ * ptd; } ;
typedef  int /*<<< orphan*/  IEnumFORMATETC ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ FORMATETC ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DATADIR_GET ; 
 int /*<<< orphan*/  DATADIR_SET ; 
 scalar_t__ DataObjectImpl_EnumFormatEtc_calls ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(IDataObject *src)
{
    HRESULT hr;
    IDataObject *data;
    IEnumFORMATETC *enum_fmt, *src_enum;
    FORMATETC fmt, src_fmt;
    DWORD count = 0;

    hr = FUNC9(&data);
    FUNC12(hr == S_OK, "OleGetClipboard failed with error 0x%08x\n", hr);

    hr = FUNC2(data, DATADIR_SET, &enum_fmt);
    FUNC12(hr == E_NOTIMPL ||
       FUNC10(hr == E_INVALIDARG), /* win98 (not win98SE) */
       "got %08x\n", hr);

    DataObjectImpl_EnumFormatEtc_calls = 0;
    hr = FUNC2(data, DATADIR_GET, &enum_fmt);
    FUNC12(hr == S_OK, "got %08x\n", hr);
    FUNC12(DataObjectImpl_EnumFormatEtc_calls == 0, "EnumFormatEtc was called\n");
    if (FUNC1(hr))
    {
        FUNC13("EnumFormatEtc failed, skipping tests.\n");
        return;
    }

    if(src) FUNC2(src, DATADIR_GET, &src_enum);

    while((hr = FUNC5(enum_fmt, 1, &fmt, NULL)) == S_OK)
    {
        FUNC12(src != NULL, "shouldn't be here\n");
        hr = FUNC5(src_enum, 1, &src_fmt, NULL);
        FUNC12(hr == S_OK, "%d: got %08x\n", count, hr);
        FUNC14("%d: %s\n", count, FUNC11(&fmt));
        FUNC12(fmt.cfFormat == src_fmt.cfFormat, "%d: %04x %04x\n", count, fmt.cfFormat, src_fmt.cfFormat);
        FUNC12(fmt.dwAspect == src_fmt.dwAspect, "%d: %08x %08x\n", count, fmt.dwAspect, src_fmt.dwAspect);
        FUNC12(fmt.lindex == src_fmt.lindex, "%d: %08x %08x\n", count, fmt.lindex, src_fmt.lindex);
        FUNC12(fmt.tymed == src_fmt.tymed, "%d: %08x %08x\n", count, fmt.tymed, src_fmt.tymed);
        if(fmt.ptd)
        {
            FUNC12(src_fmt.ptd != NULL, "%d: expected non-NULL\n", count);
            FUNC0(fmt.ptd);
            FUNC0(src_fmt.ptd);
        }
        count++;
    }

    FUNC12(hr == S_FALSE, "%d: got %08x\n", count, hr);

    if(src)
    {
        hr = FUNC5(src_enum, 1, &src_fmt, NULL);
        FUNC12(hr == S_FALSE, "%d: got %08x\n", count, hr);
        FUNC6(src_enum);
    }

    hr = FUNC7(enum_fmt);
    FUNC12(hr == S_OK, "got %08x\n", hr);

    if(src) /* Exercise the enumerator a bit */
    {
        IEnumFORMATETC *clone;
        FORMATETC third_fmt;

        hr = FUNC5(enum_fmt, 1, &third_fmt, NULL);
        FUNC12(hr == S_OK, "got %08x\n", hr);
        hr = FUNC5(enum_fmt, 1, &third_fmt, NULL);
        FUNC12(hr == S_OK, "got %08x\n", hr);
        hr = FUNC5(enum_fmt, 1, &third_fmt, NULL);
        FUNC12(hr == S_OK, "got %08x\n", hr);

        hr = FUNC7(enum_fmt);
        FUNC12(hr == S_OK, "got %08x\n", hr);
        hr = FUNC8(enum_fmt, 2);
        FUNC12(hr == S_OK, "got %08x\n", hr);

        hr = FUNC4(enum_fmt, &clone);
        FUNC12(hr == S_OK, "got %08x\n", hr);
        hr = FUNC5(enum_fmt, 1, &fmt, NULL);
        FUNC12(hr == S_OK, "got %08x\n", hr);
        FUNC12(fmt.cfFormat == third_fmt.cfFormat, "formats don't match\n");
        hr = FUNC5(clone, 1, &fmt, NULL);
        FUNC12(hr == S_OK, "got %08x\n", hr);
        FUNC12(fmt.cfFormat == third_fmt.cfFormat, "formats don't match\n");
        FUNC6(clone);
    }

    FUNC6(enum_fmt);
    FUNC3(data);
}