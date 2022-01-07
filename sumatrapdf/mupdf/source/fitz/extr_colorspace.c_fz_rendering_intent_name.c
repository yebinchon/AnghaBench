
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** fz_intent_names ;
 scalar_t__ nelem (char const**) ;

const char *fz_rendering_intent_name(int ri)
{
 if (ri >= 0 && ri < (int)nelem(fz_intent_names))
  return fz_intent_names[ri];
 return "RelativeColorimetric";
}
