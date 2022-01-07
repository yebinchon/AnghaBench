
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int med ;
struct TYPE_11__ {int tymed; } ;
struct TYPE_9__ {int hGlobal; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
typedef TYPE_2__ STGMEDIUM ;
typedef int IDataObject ;
typedef int HRESULT ;
typedef int * HGLOBAL ;
typedef TYPE_3__ FORMATETC ;


 scalar_t__ FAILED (int ) ;
 int GMEM_DDESHARE ;
 int GMEM_MOVEABLE ;
 int IDataObject_GetData (int *,TYPE_3__*,TYPE_2__*) ;
 int ReleaseStgMedium (TYPE_2__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TYMED_HGLOBAL ;
 int dup_global_mem (int ,int,int **) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static HRESULT get_data_from_global(IDataObject *data, FORMATETC *fmt, HGLOBAL *mem)
{
    HGLOBAL h;
    HRESULT hr;
    FORMATETC mem_fmt;
    STGMEDIUM med;

    *mem = ((void*)0);

    mem_fmt = *fmt;
    mem_fmt.tymed = TYMED_HGLOBAL;
    memset(&med, 0, sizeof(med));

    hr = IDataObject_GetData(data, &mem_fmt, &med);
    if(FAILED(hr)) return hr;

    hr = dup_global_mem(med.u.hGlobal, GMEM_DDESHARE|GMEM_MOVEABLE, &h);

    if(SUCCEEDED(hr)) *mem = h;

    ReleaseStgMedium(&med);

    return hr;
}
