
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int controls ;

void active_control_clear(int key)
{
   controls &= ~(1 << key);
}
