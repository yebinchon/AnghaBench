#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_14__ {int /*<<< orphan*/ * Data4; int /*<<< orphan*/  Data3; int /*<<< orphan*/  Data2; int /*<<< orphan*/  Data1; } ;
struct TYPE_13__ {int /*<<< orphan*/  pid; TYPE_5__ fmtid; } ;
struct TYPE_10__ {int cbSize; int /*<<< orphan*/  const* pBlobData; } ;
struct TYPE_11__ {scalar_t__ pwszVal; TYPE_1__ blob; int /*<<< orphan*/  ulVal; } ;
struct TYPE_12__ {int vt; TYPE_2__ u; } ;
typedef  TYPE_3__* REFPROPVARIANT ;
typedef  TYPE_4__* REFPROPERTYKEY ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  TYPE_5__ GUID ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/  const*,int) ; 
#define  VT_BLOB 130 
#define  VT_LPWSTR 129 
#define  VT_UI4 128 
 int /*<<< orphan*/  const* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  propkey_formatW ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC9(const GUID *devguid, DWORD flow, REFPROPERTYKEY key, REFPROPVARIANT pv)
{
    WCHAR buffer[80];
    const GUID *id = &key->fmtid;
    HRESULT hr;
    HKEY regkey;
    LONG ret;

    hr = FUNC2(devguid, flow, &regkey);
    if (FUNC0(hr))
        return hr;
    FUNC8( buffer, propkey_formatW, id->Data1, id->Data2, id->Data3,
               id->Data4[0], id->Data4[1], id->Data4[2], id->Data4[3],
               id->Data4[4], id->Data4[5], id->Data4[6], id->Data4[7], key->pid );
    switch (pv->vt)
    {
        case VT_UI4:
        {
            ret = FUNC4(regkey, buffer, 0, REG_DWORD, (const BYTE*)&pv->u.ulVal, sizeof(DWORD));
            break;
        }
        case VT_BLOB:
        {
            ret = FUNC4(regkey, buffer, 0, REG_BINARY, pv->u.blob.pBlobData, pv->u.blob.cbSize);
            FUNC5("Blob %p %u\n", pv->u.blob.pBlobData, pv->u.blob.cbSize);

            break;
        }
        case VT_LPWSTR:
        {
            ret = FUNC4(regkey, buffer, 0, REG_SZ, (const BYTE*)pv->u.pwszVal, sizeof(WCHAR)*(1+FUNC7(pv->u.pwszVal)));
            break;
        }
        default:
            ret = 0;
            FUNC1("Unhandled type %u\n", pv->vt);
            hr = E_INVALIDARG;
            break;
    }
    FUNC3(regkey);
    FUNC5("Writing %s returned %u\n", FUNC6(buffer), ret);
    return hr;
}