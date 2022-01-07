
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IUri ;
typedef int HRESULT ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 int CreateUri (int const*,int,int ,int **) ;
 int ERR (char*) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int INTERNET_MAX_URL_LENGTH ;
 int MAX_PATH ;
 int PathIsURLW (int const*) ;
 int PathSearchAndQualifyW (int const*,int *,int ) ;
 int TRACE (char*,int ) ;
 int Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME ;
 int Uri_CREATE_ALLOW_RELATIVE ;
 int UrlCreateFromPathW (int *,int *,int *,int ) ;
 int WARN (char*) ;
 int debugstr_w (int const*) ;

HRESULT create_uri(const WCHAR *url, IUri **uri)
{
    WCHAR fileUrl[INTERNET_MAX_URL_LENGTH];

    TRACE("%s\n", debugstr_w(url));

    if (!PathIsURLW(url))
    {
        WCHAR fullpath[MAX_PATH];
        DWORD needed = ARRAY_SIZE(fileUrl);

        if (!PathSearchAndQualifyW(url, fullpath, ARRAY_SIZE(fullpath)))
        {
            WARN("can't find path\n");
            return E_FAIL;
        }

        if (FAILED(UrlCreateFromPathW(fullpath, fileUrl, &needed, 0)))
        {
            ERR("can't create url from path\n");
            return E_FAIL;
        }
        url = fileUrl;
    }

    return CreateUri(url, Uri_CREATE_ALLOW_RELATIVE | Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME, 0, uri);
}
