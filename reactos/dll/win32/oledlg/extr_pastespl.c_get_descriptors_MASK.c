#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * type_name; int /*<<< orphan*/ * link_type_name; int /*<<< orphan*/ * source_name; int /*<<< orphan*/ * link_source_name; TYPE_1__* ps; int /*<<< orphan*/  app_name; } ;
typedef  TYPE_3__ ps_struct_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_16__ {int lindex; int /*<<< orphan*/  cfFormat; int /*<<< orphan*/ * ptd; int /*<<< orphan*/  dwAspect; int /*<<< orphan*/  tymed; } ;
struct TYPE_15__ {int dwSrcOfCopy; int dwFullUserTypeName; int /*<<< orphan*/  clsid; } ;
struct TYPE_12__ {int /*<<< orphan*/  hGlobal; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
struct TYPE_11__ {int /*<<< orphan*/  lpSrcDataObj; } ;
typedef  TYPE_4__ STGMEDIUM ;
typedef  TYPE_5__ OBJECTDESCRIPTOR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_6__ FORMATETC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DVASPECT_CONTENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDS_PS_UNKNOWN_SRC ; 
 int /*<<< orphan*/  IDS_PS_UNKNOWN_TYPE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OLEDLG_hInstance ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TYMED_HGLOBAL ; 
 int /*<<< orphan*/  USERCLASSTYPE_APPNAME ; 
 int /*<<< orphan*/  cf_link_src_descriptor ; 
 int /*<<< orphan*/  cf_object_descriptor ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(HWND hdlg, ps_struct_t *ps_struct)
{
    FORMATETC fmtetc;
    STGMEDIUM stg;

    fmtetc.tymed = TYMED_HGLOBAL;
    fmtetc.dwAspect = DVASPECT_CONTENT;
    fmtetc.ptd = NULL;
    fmtetc.lindex = -1;

    fmtetc.cfFormat = cf_object_descriptor;
    if(FUNC4(ps_struct->ps->lpSrcDataObj, &fmtetc, &stg) == S_OK)
    {
        OBJECTDESCRIPTOR *obj_desc = FUNC2(stg.u.hGlobal);
        if(obj_desc->dwSrcOfCopy)
            ps_struct->source_name = FUNC7((WCHAR*)((char*)obj_desc + obj_desc->dwSrcOfCopy));
        if(obj_desc->dwFullUserTypeName)
            ps_struct->type_name = FUNC7((WCHAR*)((char*)obj_desc + obj_desc->dwFullUserTypeName));
        FUNC6(&obj_desc->clsid, USERCLASSTYPE_APPNAME, &ps_struct->app_name);
        /* Get the icon here.  If dwDrawAspect & DVASCPECT_ICON call GetData(CF_METAFILEPICT), otherwise
           native calls OleGetIconFromClass(obj_desc->clsid) */
        FUNC3(stg.u.hGlobal);
        FUNC1(stg.u.hGlobal);
    }
    else
    {
        /* Try to get some data using some of the other clipboard formats */
    }

    fmtetc.cfFormat = cf_link_src_descriptor;
    if(FUNC4(ps_struct->ps->lpSrcDataObj, &fmtetc, &stg) == S_OK)
    {
        OBJECTDESCRIPTOR *obj_desc = FUNC2(stg.u.hGlobal);
        if(obj_desc->dwSrcOfCopy)
            ps_struct->link_source_name = FUNC7((WCHAR*)((char*)obj_desc + obj_desc->dwSrcOfCopy));
        if(obj_desc->dwFullUserTypeName)
            ps_struct->link_type_name = FUNC7((WCHAR*)((char*)obj_desc + obj_desc->dwFullUserTypeName));
        FUNC3(stg.u.hGlobal);
        FUNC1(stg.u.hGlobal);
    }

    if(ps_struct->source_name == NULL && ps_struct->link_source_name == NULL)
    {
        WCHAR buf[200];
        FUNC5(OLEDLG_hInstance, IDS_PS_UNKNOWN_SRC, buf, FUNC0(buf));
        ps_struct->source_name = FUNC7(buf);
    }

    if(ps_struct->type_name == NULL && ps_struct->link_type_name == NULL)
    {
        WCHAR buf[200];
        FUNC5(OLEDLG_hInstance, IDS_PS_UNKNOWN_TYPE, buf, FUNC0(buf));
        ps_struct->type_name = FUNC7(buf);
    }
}