
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IUnknown_Release (int *) ;
 int Sleep (int) ;
 int ok (int,char*,int ) ;
 int * pAviSplitter ;

__attribute__((used)) static void release_avisplitter(void)
{
    HRESULT hr;

    Sleep(1000);
    hr = IUnknown_Release(pAviSplitter);




    ok(hr == 0, "IUnknown_Release failed with %d\n", (INT)hr);

    while (hr > 0)
        hr = IUnknown_Release(pAviSplitter);
    pAviSplitter = ((void*)0);
}
