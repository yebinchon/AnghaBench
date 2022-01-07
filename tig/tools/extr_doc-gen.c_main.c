
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int doc_actions_print () ;
 int strcmp (char const*,char*) ;

int
main(int argc, const char *argv[])
{
 int i;

 for (i = 1; i < argc; i++) {
  if (!strcmp(argv[i], "actions"))
   doc_actions_print();
 }

 return EXIT_SUCCESS;
}
