
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MIMECPINFO ;
typedef int IMultiLanguage ;
typedef int HRESULT ;


 int IMultiLanguage_GetCodePageInfo (int *,int ,int *) ;
 int IMultiLanguage_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int get_mlang (int **) ;

__attribute__((used)) static HRESULT mlang_getcodepageinfo(UINT cp, MIMECPINFO *mlang_cp_info)
{
    HRESULT hr;
    IMultiLanguage *ml;

    hr = get_mlang(&ml);

    if(SUCCEEDED(hr))
    {
        hr = IMultiLanguage_GetCodePageInfo(ml, cp, mlang_cp_info);
        IMultiLanguage_Release(ml);
    }
    return hr;
}
