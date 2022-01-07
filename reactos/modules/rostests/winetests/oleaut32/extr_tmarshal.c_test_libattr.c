
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lcid; } ;
typedef TYPE_1__ TLIBATTR ;
typedef int ITypeLib ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int GetLibAttr (int *,int,int,int ,int **) ;
 int ITypeLib_GetLibAttr (int *,TYPE_1__**) ;
 int ITypeLib_Release (int *) ;
 int ITypeLib_ReleaseTLibAttr (int *,TYPE_1__*) ;
 int LANG_NEUTRAL ;
 int LIBID_TestTypelib ;
 int LOCALE_NEUTRAL ;
 int LoadRegTypeLib (int *,int,int,int ,int **) ;
 scalar_t__ MAKELANGID (int ,int ) ;
 int SUBLANG_NEUTRAL ;
 scalar_t__ SUCCEEDED (int ) ;
 int ok (int,char*,scalar_t__) ;
 int ok_ole_success (int ,int (*) (int *,int,int,int ,int **)) ;

__attribute__((used)) static void test_libattr(void)
{
    ITypeLib *pTypeLib;
    HRESULT hr;
    TLIBATTR *pattr;

    hr = LoadRegTypeLib(&LIBID_TestTypelib, 2, 5, LOCALE_NEUTRAL, &pTypeLib);
    ok_ole_success(hr, LoadRegTypeLib);
    if (FAILED(hr))
        return;

    hr = ITypeLib_GetLibAttr(pTypeLib, &pattr);
    ok_ole_success(hr, GetLibAttr);
    if (SUCCEEDED(hr))
    {
        ok(pattr->lcid == MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), "lcid %x\n", pattr->lcid);

        ITypeLib_ReleaseTLibAttr(pTypeLib, pattr);
    }

    ITypeLib_Release(pTypeLib);
}
