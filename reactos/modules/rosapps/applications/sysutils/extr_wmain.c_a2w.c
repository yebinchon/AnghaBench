
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;



wchar_t *
a2w( char * a, wchar_t * w )
{
 wchar_t * ww = w;
 while (*a) *w++ = (wchar_t) *a++;
 *w = 0;
 return ww;
}
