
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_test_run () ;

__attribute__((used)) static inline int
hb_test_run (void)
{
  return g_test_run ();
}
