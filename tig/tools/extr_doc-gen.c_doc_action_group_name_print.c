
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
doc_action_group_name_print(const char *group)
{
 printf("%s\n", group);
 while (*group++)
  printf("^");
 printf("\n\n");
}
