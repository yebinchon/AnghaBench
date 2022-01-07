
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FZ_RI_RELATIVE_COLORIMETRIC ;
 int * fz_intent_names ;
 scalar_t__ nelem (int *) ;
 int strcmp (char const*,int ) ;

int fz_lookup_rendering_intent(const char *name)
{
 int i;
 for (i = 0; i < (int)nelem(fz_intent_names); i++)
  if (!strcmp(name, fz_intent_names[i]))
   return i;
 return FZ_RI_RELATIVE_COLORIMETRIC;
}
