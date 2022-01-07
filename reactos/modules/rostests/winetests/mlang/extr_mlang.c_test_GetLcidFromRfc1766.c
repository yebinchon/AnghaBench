
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int broken_lcid; int lcid; int hr; int rfc1766; } ;
typedef int LCID ;
typedef int IMultiLanguage2 ;
typedef int HRESULT ;
typedef size_t DWORD ;
typedef int BSTR ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int CP_ACP ;
 int E_FAIL ;
 int E_INVALIDARG ;
 int IMultiLanguage2_GetLcidFromRfc1766 (int *,int*,char*) ;
 int IMultiLanguage2_GetRfc1766FromLcid (int *,int,int *) ;
 int MAX_RFC1766_NAME ;
 int MultiByteToWideChar (int ,int ,int ,int,char*,int ) ;
 int S_FALSE ;
 int S_OK ;
 scalar_t__ broken (int) ;
 TYPE_1__* lcid_table ;
 int ok (int,char*,size_t,...) ;
 int ok_w2 (char*,char*,int ) ;

__attribute__((used)) static void test_GetLcidFromRfc1766(IMultiLanguage2 *iML2)
{
    WCHAR rfc1766W[MAX_RFC1766_NAME + 1];
    LCID lcid;
    HRESULT ret;
    DWORD i;

    static WCHAR en[] = { 'e','n',0 };
    static WCHAR en_them[] = { 'e','n','-','t','h','e','m',0 };
    static WCHAR english[] = { 'e','n','g','l','i','s','h',0 };


    for(i = 0; i < ARRAY_SIZE(lcid_table); i++) {
        lcid = -1;
        MultiByteToWideChar(CP_ACP, 0, lcid_table[i].rfc1766, -1, rfc1766W, MAX_RFC1766_NAME);
        ret = IMultiLanguage2_GetLcidFromRfc1766(iML2, &lcid, rfc1766W);


        ok((ret == lcid_table[i].hr) ||
            broken(lcid_table[i].broken_lcid && (ret == S_FALSE)),
            "#%02d: HRESULT 0x%x (expected 0x%x)\n", i, ret, lcid_table[i].hr);

        ok((lcid == lcid_table[i].lcid) ||
            broken(lcid == lcid_table[i].broken_lcid),
            "#%02d: got LCID 0x%x (expected 0x%x)\n", i, lcid, lcid_table[i].lcid);
    }


    ret = IMultiLanguage2_GetLcidFromRfc1766(iML2, ((void*)0), en);
    ok(ret == E_INVALIDARG, "GetLcidFromRfc1766 returned: %08x\n", ret);

    ret = IMultiLanguage2_GetLcidFromRfc1766(iML2, &lcid, ((void*)0));
    ok(ret == E_INVALIDARG, "GetLcidFromRfc1766 returned: %08x\n", ret);

    ret = IMultiLanguage2_GetLcidFromRfc1766(iML2, &lcid, en_them);
    ok((ret == E_FAIL || ret == S_FALSE), "GetLcidFromRfc1766 returned: %08x\n", ret);
    if (ret == S_FALSE)
    {
        BSTR rfcstr;
        static WCHAR en[] = {'e','n',0};

        ret = IMultiLanguage2_GetRfc1766FromLcid(iML2, lcid, &rfcstr);
        ok(ret == S_OK, "Expected S_OK, got %08x\n", ret);
        ok_w2("Expected \"%s\",  got \"%s\"n", en, rfcstr);
    }

    ret = IMultiLanguage2_GetLcidFromRfc1766(iML2, &lcid, english);
    ok((ret == E_FAIL || ret == S_FALSE), "GetLcidFromRfc1766 returned: %08x\n", ret);
    if (ret == S_FALSE)
    {
        BSTR rfcstr;
        static WCHAR en[] = {'e','n',0};

        ret = IMultiLanguage2_GetRfc1766FromLcid(iML2, lcid, &rfcstr);
        ok(ret == S_OK, "Expected S_OK, got %08x\n", ret);
        ok_w2("Expected \"%s\",  got \"%s\"n", en, rfcstr);
    }

}
