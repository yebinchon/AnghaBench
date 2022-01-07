
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
 int WC_E_QUOTE ;
 int debug_strval (int *,int *) ;
 scalar_t__ is_char (char) ;
 scalar_t__ reader_get_cur (int *) ;
 char* reader_get_ptr (int *) ;
 int reader_init_strvalue (scalar_t__,scalar_t__,int *) ;
 int reader_skipn (int *,int) ;

__attribute__((used)) static HRESULT reader_parse_sys_literal(xmlreader *reader, strval *literal)
{
    WCHAR *cur = reader_get_ptr(reader), quote;
    UINT start;

    if (*cur != '"' && *cur != '\'') return WC_E_QUOTE;

    quote = *cur;
    reader_skipn(reader, 1);

    cur = reader_get_ptr(reader);
    start = reader_get_cur(reader);
    while (is_char(*cur) && *cur != quote)
    {
        reader_skipn(reader, 1);
        cur = reader_get_ptr(reader);
    }
    reader_init_strvalue(start, reader_get_cur(reader)-start, literal);
    if (*cur == quote) reader_skipn(reader, 1);

    TRACE("%s\n", debug_strval(reader, literal));
    return S_OK;
}
