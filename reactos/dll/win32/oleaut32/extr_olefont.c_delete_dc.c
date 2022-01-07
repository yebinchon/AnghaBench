
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteDC (int *) ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int OLEFontImpl_csHFONTLIST ;
 int * olefont_hdc ;

__attribute__((used)) static void delete_dc(void)
{
    EnterCriticalSection(&OLEFontImpl_csHFONTLIST);
    if(olefont_hdc)
    {
        DeleteDC(olefont_hdc);
        olefont_hdc = ((void*)0);
    }
    LeaveCriticalSection(&OLEFontImpl_csHFONTLIST);
}
