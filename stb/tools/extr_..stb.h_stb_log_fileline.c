
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__log_fileline ;

void stb_log_fileline(int active)
{
   stb__log_fileline = active;
}
