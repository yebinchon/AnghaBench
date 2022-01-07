
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ uri; } ;
typedef int IUri ;
typedef TYPE_1__ HTMLOuterWindow ;
typedef int HRESULT ;


 int CoInternetCombineUrlEx (scalar_t__,int const*,int,int **,int ) ;
 int URL_DONT_ESCAPE_EXTRA_INFO ;
 int URL_ESCAPE_SPACES_ONLY ;
 int create_uri (int const*,int ,int **) ;

HRESULT create_relative_uri(HTMLOuterWindow *window, const WCHAR *rel_uri, IUri **uri)
{
    return window->uri
        ? CoInternetCombineUrlEx(window->uri, rel_uri, URL_ESCAPE_SPACES_ONLY|URL_DONT_ESCAPE_EXTRA_INFO, uri, 0)
        : create_uri(rel_uri, 0, uri);
}
