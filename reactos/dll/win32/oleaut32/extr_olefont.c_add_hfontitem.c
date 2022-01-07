
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int int_refs; int total_refs; int entry; int gdiFont; } ;
typedef int HRESULT ;
typedef TYPE_1__ HFONTItem ;
typedef int HFONT ;


 int E_OUTOFMEMORY ;
 int EnterCriticalSection (int *) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int LeaveCriticalSection (int *) ;
 int OLEFontImpl_csHFONTLIST ;
 int OLEFontImpl_hFontList ;
 int S_OK ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static HRESULT add_hfontitem(HFONT hfont)
{
    HFONTItem *new_item = HeapAlloc(GetProcessHeap(), 0, sizeof(*new_item));

    if(!new_item) return E_OUTOFMEMORY;

    new_item->int_refs = 1;
    new_item->total_refs = 1;
    new_item->gdiFont = hfont;
    EnterCriticalSection(&OLEFontImpl_csHFONTLIST);
    list_add_tail(&OLEFontImpl_hFontList,&new_item->entry);
    LeaveCriticalSection(&OLEFontImpl_csHFONTLIST);
    return S_OK;
}
