
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlreader ;
typedef int strval ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,int ) ;
 int WC_E_DIGIT ;
 int WC_E_XMLDECL ;
 int debug_strval (int *,int *) ;
 scalar_t__ reader_cmp (int *,char const*) ;
 scalar_t__ reader_get_cur (int *) ;
 char* reader_get_ptr (int *) ;
 int reader_init_strvalue (scalar_t__,scalar_t__,int *) ;
 int reader_skipn (int *,int) ;

__attribute__((used)) static HRESULT reader_parse_versionnum(xmlreader *reader, strval *val)
{
    static const WCHAR onedotW[] = {'1','.',0};
    WCHAR *ptr, *ptr2;
    UINT start;

    if (reader_cmp(reader, onedotW)) return WC_E_XMLDECL;

    start = reader_get_cur(reader);

    reader_skipn(reader, 2);

    ptr2 = ptr = reader_get_ptr(reader);
    while (*ptr >= '0' && *ptr <= '9')
    {
        reader_skipn(reader, 1);
        ptr = reader_get_ptr(reader);
    }

    if (ptr2 == ptr) return WC_E_DIGIT;
    reader_init_strvalue(start, reader_get_cur(reader)-start, val);
    TRACE("version=%s\n", debug_strval(reader, val));
    return S_OK;
}
