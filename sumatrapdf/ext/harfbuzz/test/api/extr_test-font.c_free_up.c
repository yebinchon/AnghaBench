
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_assert (int) ;

__attribute__((used)) static void
free_up (void *user_data)
{
  int *freed = (int *) user_data;

  g_assert (!*freed);

  (*freed)++;
}
