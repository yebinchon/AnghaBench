
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int libzfs_core_fini () ;
 int libzfs_core_init () ;
 char const* pool ;
 int printf (char*,char const*) ;
 int run_tests () ;
 int unexpected_failures ;

int
main(int argc, const char *argv[])
{
 (void) libzfs_core_init();

 if (argc != 2) {
  (void) printf("usage: %s <pool>\n",
      argv[0]);
  exit(2);
 }
 pool = argv[1];

 run_tests();

 libzfs_core_fini();
 return (unexpected_failures);
}
