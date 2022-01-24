#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tid_t ;
struct TYPE_20__ {scalar_t__ id; scalar_t__ tid; int func_disp_idx; scalar_t__ prop_vt; int argc; scalar_t__* arg_types; int call_vtbl_off; int get_vtbl_off; int put_vtbl_off; int /*<<< orphan*/  name; } ;
typedef  TYPE_7__ func_info_t ;
struct TYPE_21__ {int func_cnt; int /*<<< orphan*/  func_disp_cnt; TYPE_7__* funcs; } ;
typedef  TYPE_8__ dispex_data_t ;
typedef  scalar_t__ VARTYPE ;
struct TYPE_16__ {scalar_t__ vt; } ;
struct TYPE_17__ {TYPE_3__ tdesc; } ;
struct TYPE_22__ {scalar_t__ memid; int invkind; int cParams; scalar_t__ funckind; scalar_t__ callconv; int oVft; TYPE_6__* lprgelemdescParam; TYPE_4__ elemdescFunc; scalar_t__ cParamsOpt; } ;
struct TYPE_18__ {scalar_t__ vt; } ;
struct TYPE_14__ {int wParamFlags; } ;
struct TYPE_15__ {TYPE_1__ paramdesc; } ;
struct TYPE_19__ {TYPE_5__ tdesc; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_9__ FUNCDESC ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ CC_STDCALL ; 
 int DISPATCH_METHOD ; 
 int DISPATCH_PROPERTYGET ; 
 int DISPATCH_PROPERTYPUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC_DISPATCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_ARGS ; 
 int PARAMFLAG_FHASDEFAULT ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ VT_EMPTY ; 
 scalar_t__ VT_VOID ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC5 (int) ; 
 TYPE_7__* FUNC6 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(dispex_data_t *data, DWORD *size, tid_t tid, const FUNCDESC *desc, ITypeInfo *dti)
{
    func_info_t *info;
    HRESULT hres;

    for(info = data->funcs; info < data->funcs+data->func_cnt; info++) {
        if(info->id == desc->memid) {
            if(info->tid != tid)
                return; /* Duplicated in other interface */
            break;
        }
    }

    if(info == data->funcs+data->func_cnt) {
        if(data->func_cnt == *size)
            data->funcs = FUNC6(data->funcs, (*size <<= 1)*sizeof(func_info_t));

        info = data->funcs+data->func_cnt;
        hres = FUNC1(dti, desc->memid, &info->name, NULL, NULL, NULL);
        if(FUNC0(hres))
            return;

        data->func_cnt++;

        info->id = desc->memid;
        info->tid = tid;
        info->func_disp_idx = -1;
        info->prop_vt = VT_EMPTY;
    }

    if(desc->invkind & DISPATCH_METHOD) {
        unsigned i;

        info->func_disp_idx = data->func_disp_cnt++;
        info->argc = desc->cParams;

        FUNC3(info->argc < MAX_ARGS);
        FUNC3(desc->funckind == FUNC_DISPATCH);

        info->arg_types = FUNC5(sizeof(*info->arg_types) * info->argc);
        if(!info->arg_types)
            return; /* FIXME: real error instead of fallback */

        for(i=0; i < info->argc; i++)
            info->arg_types[i] = desc->lprgelemdescParam[i].tdesc.vt;

        info->prop_vt = desc->elemdescFunc.tdesc.vt;
        if(info->prop_vt != VT_VOID && !FUNC7(info->prop_vt)) {
            FUNC2("%s: return type %d\n", FUNC4(info->name), info->prop_vt);
            return; /* Fallback to ITypeInfo::Invoke */
        }

        if(desc->cParamsOpt) {
            FUNC2("%s: optional params\n", FUNC4(info->name));
            return; /* Fallback to ITypeInfo::Invoke */
        }

        for(i=0; i < info->argc; i++) {
            if(!FUNC7(info->arg_types[i])) {
                return; /* Fallback to ITypeInfo for unsupported arg types */
            }

            if(desc->lprgelemdescParam[i].u.paramdesc.wParamFlags & PARAMFLAG_FHASDEFAULT) {
                FUNC2("%s param %d: default value\n", FUNC4(info->name), i);
                return; /* Fallback to ITypeInfo::Invoke */
            }
        }

        FUNC3(info->argc <= MAX_ARGS);
        FUNC3(desc->callconv == CC_STDCALL);

        info->call_vtbl_off = desc->oVft/sizeof(void*);
    }else if(desc->invkind & (DISPATCH_PROPERTYPUT|DISPATCH_PROPERTYGET)) {
        VARTYPE vt = VT_EMPTY;

        if(desc->invkind & DISPATCH_PROPERTYGET) {
            vt = desc->elemdescFunc.tdesc.vt;
            info->get_vtbl_off = desc->oVft/sizeof(void*);
        }
        if(desc->invkind & DISPATCH_PROPERTYPUT) {
            FUNC3(desc->cParams == 1);
            vt = desc->lprgelemdescParam->tdesc.vt;
            info->put_vtbl_off = desc->oVft/sizeof(void*);
        }

        FUNC3(info->prop_vt == VT_EMPTY || vt == info->prop_vt);
        info->prop_vt = vt;
    }
}