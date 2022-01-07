
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlreader ;
typedef char WCHAR ;
typedef int HRESULT ;


 int S_OK ;
 int WC_E_EQUAL ;
 scalar_t__ reader_cmp (int *,char const*) ;
 int reader_skipn (int *,int) ;
 int reader_skipspaces (int *) ;

__attribute__((used)) static HRESULT reader_parse_eq(xmlreader *reader)
{
    static const WCHAR eqW[] = {'=',0};
    reader_skipspaces(reader);
    if (reader_cmp(reader, eqW)) return WC_E_EQUAL;

    reader_skipn(reader, 1);
    reader_skipspaces(reader);
    return S_OK;
}
