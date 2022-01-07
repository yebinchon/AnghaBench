
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int INT ;
typedef int DWORD ;


 int LOCALE_NAME_USER_DEFAULT ;
 int pLCMapStringEx (int ,int ,int ,int ,int ,int ,int *,int *,int ) ;

__attribute__((used)) static INT LCMapStringEx_wrapper(DWORD flags, LPCWSTR src, INT srclen, LPWSTR dst, INT dstlen)
{
    return pLCMapStringEx(LOCALE_NAME_USER_DEFAULT, flags, src, srclen, dst, dstlen, ((void*)0), ((void*)0), 0);
}
