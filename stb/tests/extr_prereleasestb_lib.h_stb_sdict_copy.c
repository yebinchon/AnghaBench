
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_sdict ;


 int * stb_sdictinternal_copy (int *) ;

stb_sdict* stb_sdict_copy(stb_sdict *old)
{
   return stb_sdictinternal_copy(old);
}
