
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int med ;
struct TYPE_11__ {int tymed; } ;
struct TYPE_9__ {int hBitmap; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
typedef TYPE_2__ STGMEDIUM ;
typedef int IDataObject ;
typedef int HRESULT ;
typedef int * HBITMAP ;
typedef TYPE_3__ FORMATETC ;


 scalar_t__ FAILED (int ) ;
 int IDataObject_GetData (int *,TYPE_3__*,TYPE_2__*) ;
 int ReleaseStgMedium (TYPE_2__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TYMED_GDI ;
 int dup_bitmap (int ,int **) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static HRESULT get_data_from_bitmap(IDataObject *data, FORMATETC *fmt, HBITMAP *hbm)
{
    HBITMAP copy;
    HRESULT hr;
    FORMATETC mem_fmt;
    STGMEDIUM med;

    *hbm = ((void*)0);

    mem_fmt = *fmt;
    mem_fmt.tymed = TYMED_GDI;
    memset(&med, 0, sizeof(med));

    hr = IDataObject_GetData(data, &mem_fmt, &med);
    if(FAILED(hr)) return hr;

    hr = dup_bitmap(med.u.hBitmap, &copy);

    if(SUCCEEDED(hr)) *hbm = copy;

    ReleaseStgMedium(&med);

    return hr;
}
