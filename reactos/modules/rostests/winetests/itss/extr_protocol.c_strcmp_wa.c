
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int a2w (char const*) ;
 int lstrcmpW (int const*,int ) ;

__attribute__((used)) static int strcmp_wa(const WCHAR *str1, const char *str2)
{
    return lstrcmpW(str1, a2w(str2));
}
