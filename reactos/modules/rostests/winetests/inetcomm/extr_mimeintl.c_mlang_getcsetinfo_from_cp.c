
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_3__ {int * wszWebCharset; int * wszHeaderCharset; int * wszBodyCharset; } ;
typedef int MIMECSETINFO ;
typedef TYPE_1__ MIMECPINFO ;
typedef int IMultiLanguage ;
typedef int HRESULT ;
typedef int CHARSETTYPE ;





 scalar_t__ FAILED (int ) ;
 int IMultiLanguage_GetCharsetInfo (int *,int *,int *) ;
 int IMultiLanguage_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int get_mlang (int **) ;
 int mlang_getcodepageinfo (int ,TYPE_1__*) ;

__attribute__((used)) static HRESULT mlang_getcsetinfo_from_cp(UINT cp, CHARSETTYPE charset_type, MIMECSETINFO *mlang_info)
{
    MIMECPINFO mlang_cp_info;
    WCHAR *charset_name;
    HRESULT hr;
    IMultiLanguage *ml;

    hr = mlang_getcodepageinfo(cp, &mlang_cp_info);
    if(FAILED(hr)) return hr;

    switch(charset_type)
    {
    case 130:
        charset_name = mlang_cp_info.wszBodyCharset;
        break;
    case 129:
        charset_name = mlang_cp_info.wszHeaderCharset;
        break;
    case 128:
        charset_name = mlang_cp_info.wszWebCharset;
        break;
    }

    hr = get_mlang(&ml);

    if(SUCCEEDED(hr))
    {
        hr = IMultiLanguage_GetCharsetInfo(ml, charset_name, mlang_info);
        IMultiLanguage_Release(ml);
    }
    return hr;
}
