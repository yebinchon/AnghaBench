
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int VOID ;



VOID strcpyw_(wchar_t* dst,wchar_t* src)
{
    const wchar_t* p = src;
    while ((*dst++ = *p++)) {}
}
