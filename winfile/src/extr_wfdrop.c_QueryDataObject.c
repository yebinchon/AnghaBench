
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* lpVtbl; } ;
struct TYPE_10__ {TYPE_1__ ido; } ;
typedef TYPE_3__ WF_IDataObject ;
struct TYPE_11__ {int member_3; unsigned short cfFormat; int member_4; int member_2; int * member_1; int member_0; } ;
struct TYPE_9__ {scalar_t__ (* QueryGetData ) (int ,TYPE_4__*) ;} ;
typedef int LPDATAOBJECT ;
typedef TYPE_4__ FORMATETC ;
typedef int BOOL ;


 int CFSTR_FILEDESCRIPTOR ;
 int CF_HDROP ;
 int DVASPECT_CONTENT ;
 unsigned short RegisterClipboardFormat (int ) ;
 scalar_t__ S_OK ;
 int TYMED_HGLOBAL ;
 scalar_t__ stub1 (int ,TYPE_4__*) ;
 scalar_t__ stub2 (int ,TYPE_4__*) ;

__attribute__((used)) static BOOL QueryDataObject(WF_IDataObject *pDataObject)
{
 FORMATETC fmtetc = { CF_HDROP, 0, DVASPECT_CONTENT, -1, TYMED_HGLOBAL };
    unsigned short cp_format_descriptor = RegisterClipboardFormat(CFSTR_FILEDESCRIPTOR);
    FORMATETC descriptor_format = {0, ((void*)0), DVASPECT_CONTENT, -1, TYMED_HGLOBAL};
 descriptor_format.cfFormat = cp_format_descriptor;


 return pDataObject->ido.lpVtbl->QueryGetData((LPDATAOBJECT)pDataObject, &fmtetc) == S_OK ||
   pDataObject->ido.lpVtbl->QueryGetData((LPDATAOBJECT)pDataObject, &descriptor_format) == S_OK;
}
