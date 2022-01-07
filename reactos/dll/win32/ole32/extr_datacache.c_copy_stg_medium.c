
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int hMF; } ;
struct TYPE_6__ {int hGlobal; int hMetaFilePict; } ;
struct TYPE_7__ {scalar_t__ tymed; scalar_t__ pUnkForRelease; TYPE_1__ u; } ;
typedef TYPE_2__ STGMEDIUM ;
typedef TYPE_3__ METAFILEPICT ;
typedef int HRESULT ;
typedef int CLIPFORMAT ;


 int CopyMetaFileW (int ,int *) ;
 int DV_E_STGMEDIUM ;
 int E_OUTOFMEMORY ;
 int GMEM_MOVEABLE ;
 int GlobalAlloc (int ,int) ;
 void* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int IUnknown_AddRef (scalar_t__) ;
 int OleDuplicateData (int ,int ,int ) ;
 int S_OK ;
 scalar_t__ TYMED_MFPICT ;
 scalar_t__ TYMED_NULL ;

__attribute__((used)) static HRESULT copy_stg_medium(CLIPFORMAT cf, STGMEDIUM *dest_stgm,
                               const STGMEDIUM *src_stgm)
{
    if (src_stgm->tymed == TYMED_MFPICT)
    {
        const METAFILEPICT *src_mfpict = GlobalLock(src_stgm->u.hMetaFilePict);
        METAFILEPICT *dest_mfpict;

        if (!src_mfpict)
            return DV_E_STGMEDIUM;
        dest_stgm->u.hMetaFilePict = GlobalAlloc(GMEM_MOVEABLE, sizeof(METAFILEPICT));
        dest_mfpict = GlobalLock(dest_stgm->u.hMetaFilePict);
        if (!dest_mfpict)
        {
            GlobalUnlock(src_stgm->u.hMetaFilePict);
            return E_OUTOFMEMORY;
        }
        *dest_mfpict = *src_mfpict;
        dest_mfpict->hMF = CopyMetaFileW(src_mfpict->hMF, ((void*)0));
        GlobalUnlock(src_stgm->u.hMetaFilePict);
        GlobalUnlock(dest_stgm->u.hMetaFilePict);
    }
    else if (src_stgm->tymed != TYMED_NULL)
    {
        dest_stgm->u.hGlobal = OleDuplicateData(src_stgm->u.hGlobal, cf,
                                                GMEM_MOVEABLE);
        if (!dest_stgm->u.hGlobal)
            return E_OUTOFMEMORY;
    }
    dest_stgm->tymed = src_stgm->tymed;
    dest_stgm->pUnkForRelease = src_stgm->pUnkForRelease;
    if (dest_stgm->pUnkForRelease)
        IUnknown_AddRef(dest_stgm->pUnkForRelease);
    return S_OK;
}
