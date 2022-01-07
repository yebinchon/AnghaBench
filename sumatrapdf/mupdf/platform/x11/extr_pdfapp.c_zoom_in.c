
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ nelem (int*) ;
 int* zoomlist ;

__attribute__((used)) static int zoom_in(int oldres)
{
 int i;
 for (i = 0; i < (int)nelem(zoomlist) - 1; ++i)
  if (zoomlist[i] <= oldres && zoomlist[i+1] > oldres)
   return zoomlist[i+1];
 return zoomlist[i];
}
