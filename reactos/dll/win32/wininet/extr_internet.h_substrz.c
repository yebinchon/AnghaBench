
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substr_t ;
typedef int WCHAR ;


 int strlenW (int const*) ;
 int substr (int const*,int ) ;

__attribute__((used)) static inline substr_t substrz(const WCHAR *str)
{
    return substr(str, strlenW(str));
}
