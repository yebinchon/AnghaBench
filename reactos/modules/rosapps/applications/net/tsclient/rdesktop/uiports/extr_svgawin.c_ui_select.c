
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_sock ;

int ui_select(int in)
{
  g_sock = in;
  return 1;
}
