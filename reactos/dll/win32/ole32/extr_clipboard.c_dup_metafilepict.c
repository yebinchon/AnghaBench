
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hMF; } ;
typedef TYPE_1__ METAFILEPICT ;
typedef int HRESULT ;
typedef int * HGLOBAL ;


 scalar_t__ CopyMetaFileW (scalar_t__,int *) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int GMEM_DDESHARE ;
 int GMEM_MOVEABLE ;
 int GlobalFree (int *) ;
 TYPE_1__* GlobalLock (int *) ;
 int GlobalUnlock (int *) ;
 int S_OK ;
 int dup_global_mem (int *,int,int **) ;

__attribute__((used)) static HRESULT dup_metafilepict(HGLOBAL src, HGLOBAL *pdest)
{
    HRESULT hr;
    HGLOBAL dest;
    METAFILEPICT *dest_ptr;

    *pdest = ((void*)0);


    hr = dup_global_mem(src, GMEM_DDESHARE|GMEM_MOVEABLE, &dest);
    if (FAILED(hr)) return hr;

    dest_ptr = GlobalLock(dest);
    if (!dest_ptr) return E_FAIL;


    dest_ptr->hMF = CopyMetaFileW(dest_ptr->hMF, ((void*)0));
    if (dest_ptr->hMF)
    {
       GlobalUnlock(dest);
       *pdest = dest;
       return S_OK;
    }
    else
    {
       GlobalUnlock(dest);
       GlobalFree(dest);
       return E_FAIL;
    }
}
