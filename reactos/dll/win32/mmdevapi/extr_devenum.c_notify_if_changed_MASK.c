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
typedef  int /*<<< orphan*/  new_val ;
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  ERole ;
typedef  int /*<<< orphan*/  EDataFlow ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static BOOL FUNC8(EDataFlow flow, ERole role, HKEY key,
                              const WCHAR *val_name, WCHAR *old_val, IMMDevice *def_dev)
{
    WCHAR new_val[64], *id;
    DWORD size;
    HRESULT hr;

    size = sizeof(new_val);
    if(FUNC4(key, val_name, 0, NULL,
                (BYTE*)new_val, &size) != ERROR_SUCCESS){
        if(old_val[0] != 0){
            /* set by user -> system default */
            if(def_dev){
                hr = FUNC3(def_dev, &id);
                if(FUNC2(hr)){
                    FUNC1("GetId failed: %08x\n", hr);
                    return FALSE;
                }
            }else
                id = NULL;

            FUNC7(flow, role, id);
            old_val[0] = 0;
            FUNC0(id);

            return TRUE;
        }

        /* system default -> system default, noop */
        return FALSE;
    }

    if(!FUNC5(old_val, new_val)){
        /* set by user -> same value */
        return FALSE;
    }

    if(new_val[0] != 0){
        /* set by user -> different value */
        FUNC7(flow, role, new_val);
        FUNC6(old_val, new_val, sizeof(new_val));
        return TRUE;
    }

    /* set by user -> system default */
    if(def_dev){
        hr = FUNC3(def_dev, &id);
        if(FUNC2(hr)){
            FUNC1("GetId failed: %08x\n", hr);
            return FALSE;
        }
    }else
        id = NULL;

    FUNC7(flow, role, id);
    old_val[0] = 0;
    FUNC0(id);

    return TRUE;
}