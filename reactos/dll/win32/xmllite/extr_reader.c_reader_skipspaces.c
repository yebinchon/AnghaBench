
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlreader ;
typedef int WCHAR ;
typedef int UINT ;


 scalar_t__ is_wchar_space (int const) ;
 int reader_get_cur (int *) ;
 int * reader_get_ptr (int *) ;
 int reader_skipn (int *,int) ;

__attribute__((used)) static int reader_skipspaces(xmlreader *reader)
{
    const WCHAR *ptr = reader_get_ptr(reader);
    UINT start = reader_get_cur(reader);

    while (is_wchar_space(*ptr))
    {
        reader_skipn(reader, 1);
        ptr = reader_get_ptr(reader);
    }

    return reader_get_cur(reader) - start;
}
