
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int med ;
struct TYPE_11__ {int tymed; } ;
struct TYPE_9__ {int hMetaFilePict; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
typedef TYPE_2__ STGMEDIUM ;
typedef int IDataObject ;
typedef int HRESULT ;
typedef int * HGLOBAL ;
typedef TYPE_3__ FORMATETC ;


 scalar_t__ FAILED (int ) ;
 int IDataObject_GetData (int *,TYPE_3__*,TYPE_2__*) ;
 int ReleaseStgMedium (TYPE_2__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TYMED_MFPICT ;
 int dup_metafilepict (int ,int **) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static HRESULT get_data_from_metafilepict(IDataObject *data, FORMATETC *fmt, HGLOBAL *mem)
{
    HGLOBAL copy;
    HRESULT hr;
    FORMATETC mem_fmt;
    STGMEDIUM med;

    *mem = ((void*)0);

    mem_fmt = *fmt;
    mem_fmt.tymed = TYMED_MFPICT;
    memset(&med, 0, sizeof(med));

    hr = IDataObject_GetData(data, &mem_fmt, &med);
    if(FAILED(hr)) return hr;

    hr = dup_metafilepict(med.u.hMetaFilePict, &copy);

    if(SUCCEEDED(hr)) *mem = copy;

    ReleaseStgMedium(&med);

    return hr;
}
