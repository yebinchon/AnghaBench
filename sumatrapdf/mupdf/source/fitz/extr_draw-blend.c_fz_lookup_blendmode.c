
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FZ_BLEND_NORMAL ;
 int * fz_blendmode_names ;
 scalar_t__ nelem (int *) ;
 int strcmp (char const*,int ) ;

int fz_lookup_blendmode(const char *name)
{
 int i;
 for (i = 0; i < (int)nelem(fz_blendmode_names); i++)
  if (!strcmp(name, fz_blendmode_names[i]))
   return i;
 return FZ_BLEND_NORMAL;
}
