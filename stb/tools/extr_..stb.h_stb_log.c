
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__log_active ;

void stb_log(int active)
{
   stb__log_active = active;
}
