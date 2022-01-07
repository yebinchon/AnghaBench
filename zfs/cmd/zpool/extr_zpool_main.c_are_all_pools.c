
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_pool (char*) ;

__attribute__((used)) static int
are_all_pools(int argc, char **argv)
{
 if ((argc == 0) || !*argv)
  return (0);

 while (--argc >= 0)
  if (!is_pool(argv[argc]))
   return (0);

 return (1);
}
