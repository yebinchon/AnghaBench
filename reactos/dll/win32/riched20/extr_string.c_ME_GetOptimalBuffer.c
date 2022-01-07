
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;



__attribute__((used)) static int ME_GetOptimalBuffer(int nLen)
{
  return ((sizeof(WCHAR) * nLen) + 128) & ~63;
}
