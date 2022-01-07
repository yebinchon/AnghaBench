
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xmlreader ;
struct TYPE_5__ {int len; } ;
typedef TYPE_1__ strval ;
typedef int WCHAR ;


 int memcmp (int ,int ,int) ;
 int reader_get_strptr (int const*,TYPE_1__ const*) ;

__attribute__((used)) static inline int strval_eq(const xmlreader *reader, const strval *str1, const strval *str2)
{
    if (str1->len != str2->len) return 0;
    return !memcmp(reader_get_strptr(reader, str1), reader_get_strptr(reader, str2), str1->len*sizeof(WCHAR));
}
