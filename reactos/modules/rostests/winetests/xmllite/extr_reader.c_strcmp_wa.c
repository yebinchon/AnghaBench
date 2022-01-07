
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int * a2w (char const*) ;
 int free_str (int *) ;
 int lstrcmpW (int const*,int *) ;

__attribute__((used)) static int strcmp_wa(const WCHAR *str1, const char *stra)
{
    WCHAR *str2 = a2w(stra);
    int r = lstrcmpW(str1, str2);
    free_str(str2);
    return r;
}
