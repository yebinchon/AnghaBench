
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* fz_blendmode_names ;
 scalar_t__ nelem (scalar_t__*) ;

char *fz_blendmode_name(int blendmode)
{
 if (blendmode >= 0 && blendmode < (int)nelem(fz_blendmode_names))
  return (char*)fz_blendmode_names[blendmode];
 return "Normal";
}
