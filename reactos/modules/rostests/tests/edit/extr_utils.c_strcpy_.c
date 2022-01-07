
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;



VOID strcpy_(char *dst, const char *src)
{
 const char* p = src;
 while ((*dst++ = *p++)) {}
}
