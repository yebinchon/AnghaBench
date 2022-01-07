
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 scalar_t__ E_FAIL ;
 int FEATURE_ENTRY_COUNT ;
 int GET_FEATURE_FROM_PROCESS ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCoInternetIsFeatureEnabled (int ,int ) ;

__attribute__((used)) static void test_CoInternetIsFeatureEnabled(void) {
    HRESULT hres;

    hres = pCoInternetIsFeatureEnabled(FEATURE_ENTRY_COUNT, GET_FEATURE_FROM_PROCESS);
    ok(hres == E_FAIL, "CoInternetIsFeatureEnabled returned %08x, expected E_FAIL\n", hres);
}
