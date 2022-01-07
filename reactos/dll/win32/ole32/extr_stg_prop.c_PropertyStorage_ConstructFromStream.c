
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int IPropertyStorage_iface; } ;
typedef int REFFMTID ;
typedef TYPE_1__ PropertyStorage_impl ;
typedef int IStream ;
typedef int IPropertyStorage ;
typedef int HRESULT ;
typedef int DWORD ;


 int IPropertyStorage_Release (int *) ;
 int PropertyStorage_BaseConstruct (int *,int ,int ,TYPE_1__**) ;
 int PropertyStorage_ReadFromStream (TYPE_1__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*) ;
 int assert (int **) ;

__attribute__((used)) static HRESULT PropertyStorage_ConstructFromStream(IStream *stm,
 REFFMTID rfmtid, DWORD grfMode, IPropertyStorage** pps)
{
    PropertyStorage_impl *ps;
    HRESULT hr;

    assert(pps);
    hr = PropertyStorage_BaseConstruct(stm, rfmtid, grfMode, &ps);
    if (SUCCEEDED(hr))
    {
        hr = PropertyStorage_ReadFromStream(ps);
        if (SUCCEEDED(hr))
        {
            *pps = &ps->IPropertyStorage_iface;
            TRACE("PropertyStorage %p constructed\n", ps);
            hr = S_OK;
        }
        else IPropertyStorage_Release( &ps->IPropertyStorage_iface );
    }
    return hr;
}
