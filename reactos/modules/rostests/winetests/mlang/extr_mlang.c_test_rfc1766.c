
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int wszRfc1766; int lcid; int wszLocaleName; } ;
typedef TYPE_1__ RFC1766INFO ;
typedef int IMultiLanguage2 ;
typedef int IEnumRfc1766 ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ IEnumRfc1766_Next (int *,int,TYPE_1__*,int*) ;
 int IEnumRfc1766_Release (int *) ;
 scalar_t__ IMultiLanguage2_EnumRfc1766 (int *,int ,int **) ;
 scalar_t__ IMultiLanguage2_GetRfc1766FromLcid (int *,int ,int *) ;
 int LANG_NEUTRAL ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int ok (int,char*,...) ;
 int * strstrW (int ,int ) ;
 int trace (char*,int ,int ,int ) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_rfc1766(IMultiLanguage2 *iML2)
{
    IEnumRfc1766 *pEnumRfc1766;
    RFC1766INFO info;
    ULONG n;
    HRESULT ret;
    BSTR rfcstr;

    ret = IMultiLanguage2_EnumRfc1766(iML2, LANG_NEUTRAL, &pEnumRfc1766);
    ok(ret == S_OK, "IMultiLanguage2_EnumRfc1766 error %08x\n", ret);

    while (1)
    {
        ret = IEnumRfc1766_Next(pEnumRfc1766, 1, &info, &n);
        if (ret != S_OK) break;






        ok(n == 1, "couldn't fetch 1 RFC1766INFO structure\n");


        ret = IMultiLanguage2_GetRfc1766FromLcid(iML2, info.lcid, &rfcstr);
        ok(ret == S_OK, "Expected S_OK, got %08x\n", ret);



        ok(strstrW(info.wszRfc1766, rfcstr) != ((void*)0),
           "Expected matching locale names\n");

        SysFreeString(rfcstr);
    }
    IEnumRfc1766_Release(pEnumRfc1766);
}
