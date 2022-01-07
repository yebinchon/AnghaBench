
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int format; int grfFlags; int IPropertyStorage_iface; int locale; int codePage; } ;
typedef int REFFMTID ;
typedef TYPE_1__ PropertyStorage_impl ;
typedef int IStream ;
typedef int IPropertyStorage ;
typedef int HRESULT ;
typedef int DWORD ;


 int CP_UNICODE ;
 int GetACP () ;
 int LOCALE_SYSTEM_DEFAULT ;
 int PROPSETFLAG_ANSI ;
 int PROPSETFLAG_CASE_SENSITIVE ;
 int PropertyStorage_BaseConstruct (int *,int ,int,TYPE_1__**) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,...) ;
 int assert (int **) ;

__attribute__((used)) static HRESULT PropertyStorage_ConstructEmpty(IStream *stm,
 REFFMTID rfmtid, DWORD grfFlags, DWORD grfMode, IPropertyStorage** pps)
{
    PropertyStorage_impl *ps;
    HRESULT hr;

    assert(pps);
    hr = PropertyStorage_BaseConstruct(stm, rfmtid, grfMode, &ps);
    if (SUCCEEDED(hr))
    {
        ps->format = 0;
        ps->grfFlags = grfFlags;
        if (ps->grfFlags & PROPSETFLAG_CASE_SENSITIVE)
            ps->format = 1;

        if (ps->grfFlags & PROPSETFLAG_ANSI)
            ps->codePage = GetACP();
        else
            ps->codePage = CP_UNICODE;
        ps->locale = LOCALE_SYSTEM_DEFAULT;
        TRACE("Code page is %d, locale is %d\n", ps->codePage, ps->locale);
        *pps = &ps->IPropertyStorage_iface;
        TRACE("PropertyStorage %p constructed\n", ps);
        hr = S_OK;
    }
    return hr;
}
