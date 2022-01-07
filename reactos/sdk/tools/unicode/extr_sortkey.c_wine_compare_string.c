
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int NORM_IGNORECASE ;
 int NORM_IGNORENONSPACE ;
 int compare_case_weights (int,int const*,int,int const*,int) ;
 int compare_diacritic_weights (int,int const*,int,int const*,int) ;
 int compare_unicode_weights (int,int const*,int,int const*,int) ;

int wine_compare_string(int flags, const WCHAR *str1, int len1,
                        const WCHAR *str2, int len2)
{
    int ret;

    ret = compare_unicode_weights(flags, str1, len1, str2, len2);
    if (!ret)
    {
        if (!(flags & NORM_IGNORENONSPACE))
            ret = compare_diacritic_weights(flags, str1, len1, str2, len2);
        if (!ret && !(flags & NORM_IGNORECASE))
            ret = compare_case_weights(flags, str1, len1, str2, len2);
    }
    return ret;
}
