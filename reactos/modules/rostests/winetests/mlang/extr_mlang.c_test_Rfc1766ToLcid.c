
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* rfc1766; int broken_lcid; int lcid; int hr; } ;
typedef int LCID ;
typedef int HRESULT ;
typedef size_t DWORD ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int E_INVALIDARG ;
 int S_FALSE ;
 scalar_t__ broken (int) ;
 TYPE_1__* lcid_table ;
 int ok (int,char*,size_t,...) ;
 int pRfc1766ToLcidA (int*,char*) ;

__attribute__((used)) static void test_Rfc1766ToLcid(void)
{
    LCID lcid;
    HRESULT ret;
    DWORD i;

    for(i = 0; i < ARRAY_SIZE(lcid_table); i++) {
        lcid = -1;
        ret = pRfc1766ToLcidA(&lcid, lcid_table[i].rfc1766);


        ok( (ret == lcid_table[i].hr) ||
            broken(lcid_table[i].broken_lcid && (ret == S_FALSE)),
            "#%02d: HRESULT 0x%x (expected 0x%x)\n", i, ret, lcid_table[i].hr);

        ok( (lcid == lcid_table[i].lcid) ||
            broken(lcid == lcid_table[i].broken_lcid),
            "#%02d: got LCID 0x%x (expected 0x%x)\n", i, lcid, lcid_table[i].lcid);
    }

    ret = pRfc1766ToLcidA(&lcid, ((void*)0));
    ok(ret == E_INVALIDARG, "got 0x%08x (expected E_INVALIDARG)\n", ret);

    ret = pRfc1766ToLcidA(((void*)0), "en");
    ok(ret == E_INVALIDARG, "got 0x%08x (expected E_INVALIDARG)\n", ret);
}
