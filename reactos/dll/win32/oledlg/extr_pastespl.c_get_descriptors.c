
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int * type_name; int * link_type_name; int * source_name; int * link_source_name; TYPE_1__* ps; int app_name; } ;
typedef TYPE_3__ ps_struct_t ;
typedef int WCHAR ;
struct TYPE_16__ {int lindex; int cfFormat; int * ptd; int dwAspect; int tymed; } ;
struct TYPE_15__ {int dwSrcOfCopy; int dwFullUserTypeName; int clsid; } ;
struct TYPE_12__ {int hGlobal; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
struct TYPE_11__ {int lpSrcDataObj; } ;
typedef TYPE_4__ STGMEDIUM ;
typedef TYPE_5__ OBJECTDESCRIPTOR ;
typedef int HWND ;
typedef TYPE_6__ FORMATETC ;


 int ARRAY_SIZE (int *) ;
 int DVASPECT_CONTENT ;
 int GlobalFree (int ) ;
 TYPE_5__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int IDS_PS_UNKNOWN_SRC ;
 int IDS_PS_UNKNOWN_TYPE ;
 scalar_t__ IDataObject_GetData (int ,TYPE_6__*,TYPE_4__*) ;
 int LoadStringW (int ,int ,int *,int ) ;
 int OLEDLG_hInstance ;
 int OleRegGetUserType (int *,int ,int *) ;
 scalar_t__ S_OK ;
 int TYMED_HGLOBAL ;
 int USERCLASSTYPE_APPNAME ;
 int cf_link_src_descriptor ;
 int cf_object_descriptor ;
 void* strdupW (int *) ;

__attribute__((used)) static void get_descriptors(HWND hdlg, ps_struct_t *ps_struct)
{
    FORMATETC fmtetc;
    STGMEDIUM stg;

    fmtetc.tymed = TYMED_HGLOBAL;
    fmtetc.dwAspect = DVASPECT_CONTENT;
    fmtetc.ptd = ((void*)0);
    fmtetc.lindex = -1;

    fmtetc.cfFormat = cf_object_descriptor;
    if(IDataObject_GetData(ps_struct->ps->lpSrcDataObj, &fmtetc, &stg) == S_OK)
    {
        OBJECTDESCRIPTOR *obj_desc = GlobalLock(stg.u.hGlobal);
        if(obj_desc->dwSrcOfCopy)
            ps_struct->source_name = strdupW((WCHAR*)((char*)obj_desc + obj_desc->dwSrcOfCopy));
        if(obj_desc->dwFullUserTypeName)
            ps_struct->type_name = strdupW((WCHAR*)((char*)obj_desc + obj_desc->dwFullUserTypeName));
        OleRegGetUserType(&obj_desc->clsid, USERCLASSTYPE_APPNAME, &ps_struct->app_name);


        GlobalUnlock(stg.u.hGlobal);
        GlobalFree(stg.u.hGlobal);
    }
    else
    {

    }

    fmtetc.cfFormat = cf_link_src_descriptor;
    if(IDataObject_GetData(ps_struct->ps->lpSrcDataObj, &fmtetc, &stg) == S_OK)
    {
        OBJECTDESCRIPTOR *obj_desc = GlobalLock(stg.u.hGlobal);
        if(obj_desc->dwSrcOfCopy)
            ps_struct->link_source_name = strdupW((WCHAR*)((char*)obj_desc + obj_desc->dwSrcOfCopy));
        if(obj_desc->dwFullUserTypeName)
            ps_struct->link_type_name = strdupW((WCHAR*)((char*)obj_desc + obj_desc->dwFullUserTypeName));
        GlobalUnlock(stg.u.hGlobal);
        GlobalFree(stg.u.hGlobal);
    }

    if(ps_struct->source_name == ((void*)0) && ps_struct->link_source_name == ((void*)0))
    {
        WCHAR buf[200];
        LoadStringW(OLEDLG_hInstance, IDS_PS_UNKNOWN_SRC, buf, ARRAY_SIZE(buf));
        ps_struct->source_name = strdupW(buf);
    }

    if(ps_struct->type_name == ((void*)0) && ps_struct->link_type_name == ((void*)0))
    {
        WCHAR buf[200];
        LoadStringW(OLEDLG_hInstance, IDS_PS_UNKNOWN_TYPE, buf, ARRAY_SIZE(buf));
        ps_struct->type_name = strdupW(buf);
    }
}
