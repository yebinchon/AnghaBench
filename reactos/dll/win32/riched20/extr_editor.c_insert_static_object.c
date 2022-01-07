
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int reobject ;
struct TYPE_22__ {int lindex; int tymed; void* dwAspect; int * ptd; int cfFormat; } ;
struct TYPE_21__ {int reOle; } ;
struct TYPE_17__ {void* cy; void* cx; } ;
struct TYPE_20__ {int cbStruct; scalar_t__ dwUser; scalar_t__ dwFlags; void* dvaspect; TYPE_2__ sizel; int * polesite; int * pstg; int * poleobj; int clsid; int cp; } ;
struct TYPE_19__ {int cy; int cx; } ;
struct TYPE_16__ {scalar_t__ hBitmap; scalar_t__ hEnhMetaFile; } ;
struct TYPE_18__ {int tymed; int * pUnkForRelease; TYPE_1__ u; } ;
typedef TYPE_3__ STGMEDIUM ;
typedef TYPE_4__ SIZEL ;
typedef TYPE_5__ REOBJECT ;
typedef TYPE_6__ ME_TextEditor ;
typedef int LPVOID ;
typedef int * LPSTORAGE ;
typedef int * LPOLEOBJECT ;
typedef int * LPOLECLIENTSITE ;
typedef int * LPOLECACHE ;
typedef int * LPDATAOBJECT ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HENHMETAFILE ;
typedef scalar_t__ HBITMAP ;
typedef TYPE_7__ FORMATETC ;
typedef int DWORD ;
typedef int CLSID ;


 int CF_BITMAP ;
 int CF_ENHMETAFILE ;
 int CLSID_NULL ;
 int CreateIRichEditOle (int *,TYPE_6__*,int *) ;
 void* DVASPECT_CONTENT ;
 scalar_t__ E_FAIL ;
 int IDataObject_Release (int *) ;
 scalar_t__ IDataObject_SetData (int *,TYPE_7__*,TYPE_3__*,int ) ;
 int IID_IDataObject ;
 int IID_IOleCache ;
 int IID_IOleObject ;
 scalar_t__ IOleCache_Cache (int *,TYPE_7__*,int ,int *) ;
 int IOleCache_Release (int *) ;
 int IOleClientSite_Release (int *) ;
 scalar_t__ IOleObject_GetUserClassID (int *,int *) ;
 scalar_t__ IOleObject_QueryInterface (int *,int *,void**) ;
 int IOleObject_Release (int *) ;
 scalar_t__ IOleObject_SetClientSite (int *,int *) ;
 scalar_t__ IRichEditOle_GetClientSite (int ,int **) ;
 int IStorage_Release (int *) ;
 int ME_InsertOLEFromCursor (TYPE_6__*,TYPE_5__*,int ) ;
 void* MulDiv (int ,int,int) ;
 scalar_t__ OleCreateDefaultHandler (int *,int *,int *,void**) ;
 int REO_CP_SELECTION ;
 scalar_t__ S_OK ;
 int TRUE ;
 int TYMED_ENHMF ;
 int TYMED_GDI ;

__attribute__((used)) static HRESULT insert_static_object(ME_TextEditor *editor, HENHMETAFILE hemf, HBITMAP hbmp,
                                    const SIZEL* sz)
{
  LPOLEOBJECT lpObject = ((void*)0);
  LPSTORAGE lpStorage = ((void*)0);
  LPOLECLIENTSITE lpClientSite = ((void*)0);
  LPDATAOBJECT lpDataObject = ((void*)0);
  LPOLECACHE lpOleCache = ((void*)0);
  STGMEDIUM stgm;
  FORMATETC fm;
  CLSID clsid;
  HRESULT hr = E_FAIL;
  DWORD conn;

  if (hemf)
  {
      stgm.tymed = TYMED_ENHMF;
      stgm.u.hEnhMetaFile = hemf;
      fm.cfFormat = CF_ENHMETAFILE;
  }
  else if (hbmp)
  {
      stgm.tymed = TYMED_GDI;
      stgm.u.hBitmap = hbmp;
      fm.cfFormat = CF_BITMAP;
  }
  stgm.pUnkForRelease = ((void*)0);

  fm.ptd = ((void*)0);
  fm.dwAspect = DVASPECT_CONTENT;
  fm.lindex = -1;
  fm.tymed = stgm.tymed;

  if (!editor->reOle)
  {
    if (!CreateIRichEditOle(((void*)0), editor, (LPVOID *)&editor->reOle))
      return hr;
  }

  if (OleCreateDefaultHandler(&CLSID_NULL, ((void*)0), &IID_IOleObject, (void**)&lpObject) == S_OK &&
      IRichEditOle_GetClientSite(editor->reOle, &lpClientSite) == S_OK &&
      IOleObject_SetClientSite(lpObject, lpClientSite) == S_OK &&
      IOleObject_GetUserClassID(lpObject, &clsid) == S_OK &&
      IOleObject_QueryInterface(lpObject, &IID_IOleCache, (void**)&lpOleCache) == S_OK &&
      IOleCache_Cache(lpOleCache, &fm, 0, &conn) == S_OK &&
      IOleObject_QueryInterface(lpObject, &IID_IDataObject, (void**)&lpDataObject) == S_OK &&
      IDataObject_SetData(lpDataObject, &fm, &stgm, TRUE) == S_OK)
  {
    REOBJECT reobject;

    reobject.cbStruct = sizeof(reobject);
    reobject.cp = REO_CP_SELECTION;
    reobject.clsid = clsid;
    reobject.poleobj = lpObject;
    reobject.pstg = lpStorage;
    reobject.polesite = lpClientSite;

    reobject.sizel.cx = MulDiv(sz->cx, 254, 144);
    reobject.sizel.cy = MulDiv(sz->cy, 254, 144);
    reobject.dvaspect = DVASPECT_CONTENT;
    reobject.dwFlags = 0;
    reobject.dwUser = 0;

    ME_InsertOLEFromCursor(editor, &reobject, 0);
    hr = S_OK;
  }

  if (lpObject) IOleObject_Release(lpObject);
  if (lpClientSite) IOleClientSite_Release(lpClientSite);
  if (lpStorage) IStorage_Release(lpStorage);
  if (lpDataObject) IDataObject_Release(lpDataObject);
  if (lpOleCache) IOleCache_Release(lpOleCache);

  return hr;
}
