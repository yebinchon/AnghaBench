
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IsEqualIID (int ,int *) ;
 int expected_iid_itexthost ;
 int expected_iid_itexthost2 ;
 int expected_iid_itextservices ;
 int ok (int ,char*,int ) ;
 int pIID_ITextHost ;
 int pIID_ITextHost2 ;
 int pIID_ITextServices ;
 int wine_dbgstr_guid (int ) ;

__attribute__((used)) static void test_IIDs(void)
{
    ok(IsEqualIID(pIID_ITextServices, &expected_iid_itextservices),
       "unexpected value for IID_ITextServices: %s\n", wine_dbgstr_guid(pIID_ITextServices));
    ok(IsEqualIID(pIID_ITextHost, &expected_iid_itexthost),
       "unexpected value for IID_ITextHost: %s\n", wine_dbgstr_guid(pIID_ITextHost));
    ok(IsEqualIID(pIID_ITextHost2, &expected_iid_itexthost2),
       "unexpected value for IID_ITextHost2: %s\n", wine_dbgstr_guid(pIID_ITextHost2));
}
