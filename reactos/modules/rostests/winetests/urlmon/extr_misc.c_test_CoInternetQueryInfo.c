
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {int uses_net; int url; } ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int E_FAIL ;
 int QUERY_USES_NETWORK ;
 int S_OK ;
 int memset (int *,char,int) ;
 int ok (int,char*,int,int,...) ;
 int pCoInternetQueryInfo (int ,int ,int ,int *,int,int*,int ) ;
 TYPE_1__* query_info_tests ;

__attribute__((used)) static void test_CoInternetQueryInfo(void)
{
    BYTE buf[100];
    DWORD cb, i;
    HRESULT hres;

    for(i = 0; i < ARRAY_SIZE(query_info_tests); i++) {
        cb = 0xdeadbeef;
        memset(buf, '?', sizeof(buf));
        hres = pCoInternetQueryInfo(query_info_tests[0].url, QUERY_USES_NETWORK, 0, buf, sizeof(buf), &cb, 0);
        ok(hres == S_OK, "[%d] CoInternetQueryInfo failed: %08x\n", i, hres);
        ok(cb == sizeof(DWORD), "[%d] cb = %d\n", i, cb);
        ok(*(DWORD*)buf == query_info_tests[i].uses_net, "[%d] ret %x, expected %x\n",
           i, *(DWORD*)buf, query_info_tests[i].uses_net);

        hres = pCoInternetQueryInfo(query_info_tests[0].url, QUERY_USES_NETWORK, 0, buf, 3, &cb, 0);
        ok(hres == E_FAIL, "[%d] CoInternetQueryInfo failed: %08x, expected E_FAIL\n", i, hres);
        hres = pCoInternetQueryInfo(query_info_tests[0].url, QUERY_USES_NETWORK, 0, ((void*)0), sizeof(buf), &cb, 0);
        ok(hres == E_FAIL, "[%d] CoInternetQueryInfo failed: %08x, expected E_FAIL\n", i, hres);

        memset(buf, '?', sizeof(buf));
        hres = pCoInternetQueryInfo(query_info_tests[0].url, QUERY_USES_NETWORK, 0, buf, sizeof(buf), ((void*)0), 0);
        ok(hres == S_OK, "[%d] CoInternetQueryInfo failed: %08x\n", i, hres);
        ok(*(DWORD*)buf == query_info_tests[i].uses_net, "[%d] ret %x, expected %x\n",
           i, *(DWORD*)buf, query_info_tests[i].uses_net);
    }
}
