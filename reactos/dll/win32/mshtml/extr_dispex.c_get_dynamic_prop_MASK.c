#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; int /*<<< orphan*/  var; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ dynamic_prop_t ;
struct TYPE_9__ {int prop_cnt; int buf_size; TYPE_1__* props; } ;
typedef  TYPE_2__ dispex_dynamic_data_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DispatchEx ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 int DYNPROP_DELETED ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int fdexNameCaseInsensitive ; 
 int fdexNameEnsure ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static HRESULT FUNC9(DispatchEx *This, const WCHAR *name, DWORD flags, dynamic_prop_t **ret)
{
    const BOOL alloc = flags & fdexNameEnsure;
    dispex_dynamic_data_t *data;
    dynamic_prop_t *prop;

    data = FUNC3(This);
    if(!data)
        return E_OUTOFMEMORY;

    for(prop = data->props; prop < data->props+data->prop_cnt; prop++) {
        if(flags & fdexNameCaseInsensitive ? !FUNC8(prop->name, name) : !FUNC7(prop->name, name)) {
            if(prop->flags & DYNPROP_DELETED) {
                if(!alloc)
                    return DISP_E_UNKNOWNNAME;
                prop->flags &= ~DYNPROP_DELETED;
            }
            *ret = prop;
            return S_OK;
        }
    }

    if(!alloc)
        return DISP_E_UNKNOWNNAME;

    FUNC0("creating dynamic prop %s\n", FUNC2(name));

    if(!data->buf_size) {
        data->props = FUNC4(sizeof(dynamic_prop_t)*4);
        if(!data->props)
            return E_OUTOFMEMORY;
        data->buf_size = 4;
    }else if(data->buf_size == data->prop_cnt) {
        dynamic_prop_t *new_props;

        new_props = FUNC5(data->props, sizeof(dynamic_prop_t)*(data->buf_size<<1));
        if(!new_props)
            return E_OUTOFMEMORY;

        data->props = new_props;
        data->buf_size <<= 1;
    }

    prop = data->props + data->prop_cnt;

    prop->name = FUNC6(name);
    if(!prop->name)
        return E_OUTOFMEMORY;

    FUNC1(&prop->var);
    prop->flags = 0;
    data->prop_cnt++;
    *ret = prop;
    return S_OK;
}