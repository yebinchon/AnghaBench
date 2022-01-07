
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlreader ;
typedef int strval ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int WC_E_LESSTHAN ;
 int WC_E_QUOTE ;
 scalar_t__ is_wchar_space (char) ;
 scalar_t__ reader_get_cur (int *) ;
 char* reader_get_ptr (int *) ;
 int reader_init_strvalue (scalar_t__,scalar_t__,int *) ;
 int reader_parse_reference (int *) ;
 int reader_skipn (int *,int) ;

__attribute__((used)) static HRESULT reader_parse_attvalue(xmlreader *reader, strval *value)
{
    WCHAR *ptr, quote;
    UINT start;

    ptr = reader_get_ptr(reader);


    quote = *ptr;
    if (quote != '\"' && quote != '\'') return WC_E_QUOTE;
    reader_skipn(reader, 1);

    ptr = reader_get_ptr(reader);
    start = reader_get_cur(reader);
    while (*ptr)
    {
        if (*ptr == '<') return WC_E_LESSTHAN;

        if (*ptr == quote)
        {
            reader_init_strvalue(start, reader_get_cur(reader)-start, value);

            reader_skipn(reader, 1);
            return S_OK;
        }

        if (*ptr == '&')
        {
            HRESULT hr = reader_parse_reference(reader);
            if (FAILED(hr)) return hr;
        }
        else
        {

            if (is_wchar_space(*ptr)) *ptr = ' ';
            reader_skipn(reader, 1);
        }
        ptr = reader_get_ptr(reader);
    }

    return WC_E_QUOTE;
}
