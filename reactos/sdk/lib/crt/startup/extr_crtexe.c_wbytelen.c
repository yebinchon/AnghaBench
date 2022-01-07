
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;



__attribute__((used)) static size_t wbytelen(const wchar_t *p)
{
 size_t ret = 1;
 while (*p!=0) {
  ret++,++p;
 }
 return ret*2;
}
