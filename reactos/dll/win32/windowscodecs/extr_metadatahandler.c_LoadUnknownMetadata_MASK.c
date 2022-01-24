#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_10__ {int /*<<< orphan*/ * pBlobData; scalar_t__ cbSize; } ;
struct TYPE_11__ {TYPE_2__ blob; } ;
struct TYPE_14__ {TYPE_3__ u; int /*<<< orphan*/  vt; } ;
struct TYPE_13__ {TYPE_6__ value; TYPE_6__ id; TYPE_6__ schema; } ;
struct TYPE_9__ {int QuadPart; } ;
struct TYPE_12__ {TYPE_1__ cbSize; } ;
typedef  TYPE_4__ STATSTG ;
typedef  TYPE_5__ MetadataItem ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ E_FAIL ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  STATFLAG_NONAME ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  VT_BLOB ; 

__attribute__((used)) static HRESULT FUNC8(IStream *input, const GUID *preferred_vendor,
    DWORD persist_options, MetadataItem **items, DWORD *item_count)
{
    HRESULT hr;
    MetadataItem *result;
    STATSTG stat;
    BYTE *data;
    ULONG bytesread;

    FUNC7("\n");

    hr = FUNC5(input, &stat, STATFLAG_NONAME);
    if (FUNC0(hr))
        return hr;

    data = FUNC2(FUNC1(), 0, stat.cbSize.QuadPart);
    if (!data) return E_OUTOFMEMORY;

    hr = FUNC4(input, data, stat.cbSize.QuadPart, &bytesread);
    if (bytesread != stat.cbSize.QuadPart) hr = E_FAIL;
    if (hr != S_OK)
    {
        FUNC3(FUNC1(), 0, data);
        return hr;
    }

    result = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(MetadataItem));
    if (!result)
    {
        FUNC3(FUNC1(), 0, data);
        return E_OUTOFMEMORY;
    }

    FUNC6(&result[0].schema);
    FUNC6(&result[0].id);
    FUNC6(&result[0].value);

    result[0].value.vt = VT_BLOB;
    result[0].value.u.blob.cbSize = bytesread;
    result[0].value.u.blob.pBlobData = data;

    *items = result;
    *item_count = 1;

    return S_OK;
}