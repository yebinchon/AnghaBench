
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCoInternetCompareUrl (int ,int ,int ) ;
 int url1 ;
 int url3 ;

__attribute__((used)) static void test_CoInternetCompareUrl(void)
{
    HRESULT hres;

    hres = pCoInternetCompareUrl(url1, url1, 0);
    ok(hres == S_OK, "CoInternetCompareUrl failed: %08x\n", hres);

    hres = pCoInternetCompareUrl(url1, url3, 0);
    ok(hres == S_FALSE, "CoInternetCompareUrl failed: %08x\n", hres);

    hres = pCoInternetCompareUrl(url3, url1, 0);
    ok(hres == S_FALSE, "CoInternetCompareUrl failed: %08x\n", hres);
}
