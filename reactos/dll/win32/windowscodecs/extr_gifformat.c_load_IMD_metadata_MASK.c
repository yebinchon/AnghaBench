#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct image_descriptor {int packed; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
typedef  int /*<<< orphan*/  imd_data ;
typedef  int ULONG ;
struct TYPE_6__ {int boolVal; int bVal; void* pwszVal; int /*<<< orphan*/  uiVal; } ;
struct TYPE_8__ {TYPE_1__ u; void* vt; } ;
struct TYPE_7__ {TYPE_4__ value; TYPE_4__ id; TYPE_4__ schema; } ;
typedef  TYPE_2__ MetadataItem ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct image_descriptor*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  S_OK ; 
 void* VT_BOOL ; 
 void* VT_LPWSTR ; 
 void* VT_UI1 ; 
 void* VT_UI2 ; 
 void* FUNC5 (char*) ; 

__attribute__((used)) static HRESULT FUNC6(IStream *stream, const GUID *vendor, DWORD options,
                                 MetadataItem **items, DWORD *count)
{
    struct image_descriptor imd_data;
    HRESULT hr;
    ULONG bytesread, i;
    MetadataItem *result;

    *items = NULL;
    *count = 0;

    hr = FUNC3(stream, &imd_data, sizeof(imd_data), &bytesread);
    if (FUNC0(hr) || bytesread != sizeof(imd_data)) return S_OK;

    result = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(MetadataItem) * 8);
    if (!result) return E_OUTOFMEMORY;

    for (i = 0; i < 8; i++)
    {
        FUNC4(&result[i].schema);
        FUNC4(&result[i].id);
        FUNC4(&result[i].value);
    }

    result[0].id.vt = VT_LPWSTR;
    result[0].id.u.pwszVal = FUNC5("Left");
    result[0].value.vt = VT_UI2;
    result[0].value.u.uiVal = imd_data.left;

    result[1].id.vt = VT_LPWSTR;
    result[1].id.u.pwszVal = FUNC5("Top");
    result[1].value.vt = VT_UI2;
    result[1].value.u.uiVal = imd_data.top;

    result[2].id.vt = VT_LPWSTR;
    result[2].id.u.pwszVal = FUNC5("Width");
    result[2].value.vt = VT_UI2;
    result[2].value.u.uiVal = imd_data.width;

    result[3].id.vt = VT_LPWSTR;
    result[3].id.u.pwszVal = FUNC5("Height");
    result[3].value.vt = VT_UI2;
    result[3].value.u.uiVal = imd_data.height;

    result[4].id.vt = VT_LPWSTR;
    result[4].id.u.pwszVal = FUNC5("LocalColorTableFlag");
    result[4].value.vt = VT_BOOL;
    result[4].value.u.boolVal = (imd_data.packed >> 7) & 1;

    result[5].id.vt = VT_LPWSTR;
    result[5].id.u.pwszVal = FUNC5("InterlaceFlag");
    result[5].value.vt = VT_BOOL;
    result[5].value.u.boolVal = (imd_data.packed >> 6) & 1;

    result[6].id.vt = VT_LPWSTR;
    result[6].id.u.pwszVal = FUNC5("SortFlag");
    result[6].value.vt = VT_BOOL;
    result[6].value.u.boolVal = (imd_data.packed >> 5) & 1;

    result[7].id.vt = VT_LPWSTR;
    result[7].id.u.pwszVal = FUNC5("LocalColorTableSize");
    result[7].value.vt = VT_UI1;
    result[7].value.u.bVal = imd_data.packed & 7;

    *items = result;
    *count = 8;

    return S_OK;
}