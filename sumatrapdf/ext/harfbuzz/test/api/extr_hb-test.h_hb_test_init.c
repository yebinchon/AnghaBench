
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_test_init (int*,char***,int *) ;

__attribute__((used)) static inline void
hb_test_init (int *argc, char ***argv)
{
  g_test_init (argc, argv, ((void*)0));
}
