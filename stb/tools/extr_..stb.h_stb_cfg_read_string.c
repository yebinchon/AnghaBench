
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_cfg ;


 int stb_cfg_read (int *,char*,char*,int) ;

int stb_cfg_read_string(stb_cfg *z, char *key, char *value, int len)
{
   if (!stb_cfg_read(z, key, value, len)) return 0;
   value[len-1] = 0;
   return 1;
}
