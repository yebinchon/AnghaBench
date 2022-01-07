
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HDC ;


 scalar_t__ CreateCompatibleDC (int *) ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int OLEFontImpl_csHFONTLIST ;
 scalar_t__ olefont_hdc ;

__attribute__((used)) static HDC get_dc(void)
{
    HDC hdc;
    EnterCriticalSection(&OLEFontImpl_csHFONTLIST);
    if(!olefont_hdc)
        olefont_hdc = CreateCompatibleDC(((void*)0));
    hdc = olefont_hdc;
    LeaveCriticalSection(&OLEFontImpl_csHFONTLIST);
    return hdc;
}
