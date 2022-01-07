
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int INT ;
typedef int DWORD ;


 int LCMapStringW (int ,int ,int ,int ,int ,int ) ;
 int LOCALE_USER_DEFAULT ;

__attribute__((used)) static INT LCMapStringW_wrapper(DWORD flags, LPCWSTR src, INT srclen, LPWSTR dst, INT dstlen)
{
    return LCMapStringW(LOCALE_USER_DEFAULT, flags, src, srclen, dst, dstlen);
}
