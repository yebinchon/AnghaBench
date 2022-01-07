
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlreader ;
typedef scalar_t__ WCHAR ;


 scalar_t__* reader_get_ptr (int *) ;
 int reader_more (int *) ;

__attribute__((used)) static int reader_cmp(xmlreader *reader, const WCHAR *str)
{
    int i=0;
    const WCHAR *ptr = reader_get_ptr(reader);
    while (str[i])
    {
        if (!ptr[i])
        {
            reader_more(reader);
            ptr = reader_get_ptr(reader);
        }
        if (str[i] != ptr[i])
            return ptr[i] - str[i];
        i++;
    }
    return 0;
}
