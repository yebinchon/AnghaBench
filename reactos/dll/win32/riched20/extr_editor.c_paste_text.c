
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int pfnCallback; scalar_t__ dwCookie; } ;
struct TYPE_10__ {scalar_t__ nLength; int hData; } ;
struct TYPE_8__ {int hGlobal; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef TYPE_2__ STGMEDIUM ;
typedef int ME_TextEditor ;
typedef TYPE_3__ ME_GlobalDestStruct ;
typedef int HRESULT ;
typedef int FORMATETC ;
typedef TYPE_4__ EDITSTREAM ;
typedef scalar_t__ DWORD_PTR ;


 int E_FAIL ;
 int FALSE ;
 int ME_ReadFromHGLOBALUnicode ;
 scalar_t__ ME_StreamIn (int *,int,TYPE_4__*,int ) ;
 int ReleaseStgMedium (TYPE_2__*) ;
 int SFF_SELECTION ;
 int SF_TEXT ;
 int SF_UNICODE ;
 int S_OK ;

__attribute__((used)) static HRESULT paste_text(ME_TextEditor *editor, FORMATETC *fmt, STGMEDIUM *med)
{
    EDITSTREAM es;
    ME_GlobalDestStruct gds;
    HRESULT hr;

    gds.hData = med->u.hGlobal;
    gds.nLength = 0;
    es.dwCookie = (DWORD_PTR)&gds;
    es.pfnCallback = ME_ReadFromHGLOBALUnicode;
    hr = ME_StreamIn( editor, SF_TEXT | SF_UNICODE | SFF_SELECTION, &es, FALSE ) == 0 ? E_FAIL : S_OK;
    ReleaseStgMedium( med );
    return hr;
}
