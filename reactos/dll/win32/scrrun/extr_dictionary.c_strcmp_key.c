
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ method; } ;
typedef TYPE_1__ dictionary ;
typedef int WCHAR ;
typedef int VARIANT ;


 scalar_t__ BinaryCompare ;
 int * get_key_strptr (int const*) ;
 int strcmpW (int const*,int const*) ;
 int strcmpiW (int const*,int const*) ;

__attribute__((used)) static inline int strcmp_key(const dictionary *dict, const VARIANT *key1, const VARIANT *key2)
{
    const WCHAR *str1, *str2;

    str1 = get_key_strptr(key1);
    str2 = get_key_strptr(key2);
    return dict->method == BinaryCompare ? strcmpW(str1, str2) : strcmpiW(str1, str2);
}
