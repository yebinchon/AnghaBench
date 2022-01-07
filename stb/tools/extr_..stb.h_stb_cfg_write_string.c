
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_cfg ;


 int stb_cfg_write (int *,char*,char*,int) ;
 scalar_t__ strlen (char*) ;

void stb_cfg_write_string(stb_cfg *z, char *key, char *value)
{
   stb_cfg_write(z, key, value, (int) strlen(value)+1);
}
