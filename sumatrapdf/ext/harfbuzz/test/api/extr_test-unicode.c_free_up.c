
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; scalar_t__ freed; } ;
typedef TYPE_1__ data_t ;


 scalar_t__ MAGIC0 ;
 scalar_t__ MAGIC1 ;
 scalar_t__ TRUE ;
 int g_assert (int) ;

__attribute__((used)) static void free_up (void *p)
{
  data_t *data = (data_t *) p;

  g_assert (data->value == MAGIC0 || data->value == MAGIC1);
  g_assert (!data->freed);
  data->freed = TRUE;
}
