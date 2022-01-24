#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int ULONG ;
struct TYPE_13__ {int ulVal; TYPE_2__* pwszVal; } ;
struct TYPE_15__ {TYPE_1__ u; int /*<<< orphan*/  vt; } ;
struct TYPE_14__ {TYPE_9__ value; TYPE_9__ id; TYPE_9__ schema; } ;
typedef  TYPE_2__ MetadataItem ;
typedef  TYPE_2__* LPWSTR ;
typedef  int /*<<< orphan*/  ImageGamma ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;
typedef  TYPE_2__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  VT_LPWSTR ; 
 int /*<<< orphan*/  VT_UI4 ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__**,int*) ; 
 int FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC8(IStream *stream, const GUID *preferred_vendor,
    DWORD persist_options, MetadataItem **items, DWORD *item_count)
{
    HRESULT hr;
    BYTE type[4];
    BYTE *data;
    ULONG data_size;
    ULONG gamma;
    static const WCHAR ImageGamma[] = {'I','m','a','g','e','G','a','m','m','a',0};
    LPWSTR name;
    MetadataItem *result;

    hr = FUNC6(stream, type, &data, &data_size);
    if (FUNC0(hr)) return hr;

    if (data_size < 4)
    {
        FUNC3(FUNC1(), 0, data);
        return E_FAIL;
    }

    gamma = FUNC7(data);

    FUNC3(FUNC1(), 0, data);

    result = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(MetadataItem));
    name = FUNC2(FUNC1(), 0, sizeof(ImageGamma));
    if (!result || !name)
    {
        FUNC3(FUNC1(), 0, result);
        FUNC3(FUNC1(), 0, name);
        return E_OUTOFMEMORY;
    }

    FUNC4(&result[0].schema);
    FUNC4(&result[0].id);
    FUNC4(&result[0].value);

    FUNC5(name, ImageGamma, sizeof(ImageGamma));

    result[0].id.vt = VT_LPWSTR;
    result[0].id.u.pwszVal = name;
    result[0].value.vt = VT_UI4;
    result[0].value.u.ulVal = gamma;

    *items = result;
    *item_count = 1;

    return S_OK;
}