
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ total_refs; } ;
typedef int HRESULT ;
typedef TYPE_1__ HFONTItem ;
typedef int HFONT ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int OLEFontImpl_csHFONTLIST ;
 int S_FALSE ;
 int S_OK ;
 TYPE_1__* find_hfontitem (int ) ;

__attribute__((used)) static HRESULT dec_ext_ref(HFONT hfont)
{
    HFONTItem *item;
    HRESULT hr = S_FALSE;

    EnterCriticalSection(&OLEFontImpl_csHFONTLIST);

    item = find_hfontitem(hfont);
    if(item)
    {
        if(--item->total_refs >= 0) hr = S_OK;
    }
    LeaveCriticalSection(&OLEFontImpl_csHFONTLIST);

    return hr;
}
