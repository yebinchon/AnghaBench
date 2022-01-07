
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int tdSize; } ;
struct TYPE_7__ {TYPE_2__* ptd; } ;
typedef int HRESULT ;
typedef TYPE_1__ FORMATETC ;


 TYPE_2__* CoTaskMemAlloc (int ) ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int memcpy (TYPE_2__*,TYPE_2__*,int ) ;

__attribute__((used)) static inline HRESULT copy_formatetc(FORMATETC *dst, const FORMATETC *src)
{
    *dst = *src;
    if (src->ptd)
    {
        dst->ptd = CoTaskMemAlloc( src->ptd->tdSize );
        if (!dst->ptd) return E_OUTOFMEMORY;
        memcpy( dst->ptd, src->ptd, src->ptd->tdSize );
    }
    return S_OK;
}
