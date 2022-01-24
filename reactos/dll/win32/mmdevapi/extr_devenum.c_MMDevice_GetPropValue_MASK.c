#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_15__ {int /*<<< orphan*/ * Data4; int /*<<< orphan*/  Data3; int /*<<< orphan*/  Data2; int /*<<< orphan*/  Data1; } ;
struct TYPE_11__ {int cbSize; void* pBlobData; } ;
struct TYPE_12__ {TYPE_1__ blob; int /*<<< orphan*/  ulVal; void* pwszVal; } ;
struct TYPE_14__ {TYPE_2__ u; int /*<<< orphan*/  vt; } ;
struct TYPE_13__ {int /*<<< orphan*/  pid; TYPE_5__ fmtid; } ;
typedef  TYPE_3__* REFPROPERTYKEY ;
typedef  TYPE_4__ PROPVARIANT ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  TYPE_5__ GUID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__ const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
#define  REG_BINARY 130 
#define  REG_DWORD 129 
#define  REG_SZ 128 
 int /*<<< orphan*/  RRF_RT_ANY ; 
 int /*<<< orphan*/  RRF_RT_REG_BINARY ; 
 int /*<<< orphan*/  RRF_RT_REG_DWORD ; 
 int /*<<< orphan*/  RRF_RT_REG_SZ ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  VT_BLOB ; 
 int /*<<< orphan*/  VT_LPWSTR ; 
 int /*<<< orphan*/  VT_UI4 ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  propkey_formatW ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC10(const GUID *devguid, DWORD flow, REFPROPERTYKEY key, PROPVARIANT *pv)
{
    WCHAR buffer[80];
    const GUID *id = &key->fmtid;
    DWORD type, size;
    HRESULT hr = S_OK;
    HKEY regkey;
    LONG ret;

    hr = FUNC3(devguid, flow, &regkey);
    if (FUNC2(hr))
        return hr;
    FUNC9( buffer, propkey_formatW, id->Data1, id->Data2, id->Data3,
               id->Data4[0], id->Data4[1], id->Data4[2], id->Data4[3],
               id->Data4[4], id->Data4[5], id->Data4[6], id->Data4[7], key->pid );
    ret = FUNC6(regkey, NULL, buffer, RRF_RT_ANY, &type, NULL, &size);
    if (ret != ERROR_SUCCESS)
    {
        FUNC7("Reading %s returned %d\n", FUNC8(buffer), ret);
        FUNC5(regkey);
        FUNC4(pv);
        return S_OK;
    }

    switch (type)
    {
        case REG_SZ:
        {
            pv->vt = VT_LPWSTR;
            pv->u.pwszVal = FUNC0(size);
            if (!pv->u.pwszVal)
                hr = E_OUTOFMEMORY;
            else
                FUNC6(regkey, NULL, buffer, RRF_RT_REG_SZ, NULL, (BYTE*)pv->u.pwszVal, &size);
            break;
        }
        case REG_DWORD:
        {
            pv->vt = VT_UI4;
            FUNC6(regkey, NULL, buffer, RRF_RT_REG_DWORD, NULL, (BYTE*)&pv->u.ulVal, &size);
            break;
        }
        case REG_BINARY:
        {
            pv->vt = VT_BLOB;
            pv->u.blob.cbSize = size;
            pv->u.blob.pBlobData = FUNC0(size);
            if (!pv->u.blob.pBlobData)
                hr = E_OUTOFMEMORY;
            else
                FUNC6(regkey, NULL, buffer, RRF_RT_REG_BINARY, NULL, (BYTE*)pv->u.blob.pBlobData, &size);
            break;
        }
        default:
            FUNC1("Unknown/unhandled type: %u\n", type);
            FUNC4(pv);
            break;
    }
    FUNC5(regkey);
    return hr;
}