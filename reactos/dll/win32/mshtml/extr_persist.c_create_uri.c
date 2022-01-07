
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IUri ;
typedef int HRESULT ;
typedef int DWORD ;


 int CreateUri (int const*,int,int ,int **) ;
 int Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME ;

HRESULT create_uri(const WCHAR *uri_str, DWORD flags, IUri **uri)
{
    return CreateUri(uri_str, flags | Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME, 0, uri);
}
