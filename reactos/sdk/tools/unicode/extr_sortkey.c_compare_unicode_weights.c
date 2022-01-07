
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int C1_PUNCT ;
 int C1_SPACE ;
 int NORM_IGNORESYMBOLS ;
 int SORT_STRINGSORT ;
 char const* collation_table ;
 int get_char_typeW (char const) ;

__attribute__((used)) static inline int compare_unicode_weights(int flags, const WCHAR *str1, int len1,
                                          const WCHAR *str2, int len2)
{
    unsigned int ce1, ce2;
    int ret;





    while (len1 > 0 && len2 > 0)
    {
        if (flags & NORM_IGNORESYMBOLS)
        {
            int skip = 0;

            if (get_char_typeW(*str1) & (C1_PUNCT | C1_SPACE))
            {
                str1++;
                len1--;
                skip = 1;
            }
            if (get_char_typeW(*str2) & (C1_PUNCT | C1_SPACE))
            {
                str2++;
                len2--;
                skip = 1;
            }
            if (skip) continue;
        }




        if (!(flags & SORT_STRINGSORT))
        {
            if (*str1 == '-' || *str1 == '\'')
            {
                if (*str2 != '-' && *str2 != '\'')
                {
                    str1++;
                    len1--;
                    continue;
                }
            }
            else if (*str2 == '-' || *str2 == '\'')
            {
                str2++;
                len2--;
                continue;
            }
        }

        ce1 = collation_table[collation_table[*str1 >> 8] + (*str1 & 0xff)];
        ce2 = collation_table[collation_table[*str2 >> 8] + (*str2 & 0xff)];

        if (ce1 != (unsigned int)-1 && ce2 != (unsigned int)-1)
            ret = (ce1 >> 16) - (ce2 >> 16);
        else
            ret = *str1 - *str2;

        if (ret) return ret;

        str1++;
        str2++;
        len1--;
        len2--;
    }
    while (len1 && !*str1)
    {
        str1++;
        len1--;
    }
    while (len2 && !*str2)
    {
        str2++;
        len2--;
    }
    return len1 - len2;
}
