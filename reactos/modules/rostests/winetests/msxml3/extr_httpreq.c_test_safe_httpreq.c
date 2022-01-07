
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLHttpRequest ;
typedef int IUnknown ;


 int E_ACCESSDENIED ;
 int INTERFACESAFE_FOR_UNTRUSTED_DATA ;
 int IXMLHttpRequest_Release (int *) ;
 int * create_xhr () ;
 int free_bstrs () ;
 int set_safety_opt (int *,int ,int) ;
 int set_xhr_site (int *) ;
 int test_open (int *,char*,char*,int ) ;

__attribute__((used)) static void test_safe_httpreq(void)
{
    IXMLHttpRequest *xhr;

    xhr = create_xhr();

    set_safety_opt((IUnknown*)xhr, INTERFACESAFE_FOR_UNTRUSTED_DATA, -1);
    set_xhr_site(xhr);


    test_open(xhr, "GET", "https://test.winehq.org/tests/hello.html", E_ACCESSDENIED);


    test_open(xhr, "GET", "http://tests.winehq.org/tests/hello.html", E_ACCESSDENIED);
    test_open(xhr, "GET", "http://www.test.winehq.org/tests/hello.html", E_ACCESSDENIED);

    IXMLHttpRequest_Release(xhr);
    free_bstrs();
}
