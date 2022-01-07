
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void
doc_action_table_print(bool start)
{
 if (start)
  printf("[frame=\"none\",grid=\"none\",cols=\"25<m,75<\"]\n");
 printf("|=============================================================================\n");
}
