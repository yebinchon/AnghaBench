
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_sck ;

int ui_select(int in)
{
  if (g_sck == 0)
  {
    g_sck = in;
  }
  return 1;
}
